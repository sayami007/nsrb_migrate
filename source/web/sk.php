<?php
session_start();
require_once('./lib/config.php');
require_once('./lib/log.php');
$oLog = New Log('');
if(isset($_SESSION['user_id'])){
	if(!empty($_POST['value'])){
		//�v������(CTRL + F8)
		if(preg_match('/^C8$/',$_POST['value'])){
			$pid = getDescendantPid($_POST['pid']);
			if(is_numeric($pid)){
				shell_exec('kill -USR1 ' . $pid . ' ');
			}
		}
		//�Ɩ�����(CTRL + F9)
		if(preg_match('/^C9$/',$_POST['value'])){
			$pids = shell_exec('ps aux|grep ' . $_SESSION['user_id'] . "| grep -v grep |awk '{printf \"%s||\",$2 }' ") ;
			$pidArray = explode("||",$pids);
			
			//kill -TERM�R�}���h���s
			foreach($pidArray as $pid){
				if(is_numeric($pid)){
					//���f���ł��Ɩ������\�ɂ����邽�߁@CONT��TERM���s
					shell_exec('kill -CONT ' . $pid . ' ');
					shell_exec('kill -USR1 ' . $pid . ' ');
				}
			}
		}
		//��~(CTRL + SHIFT + F4)
		if(preg_match('/^CS4$/',$_POST['value'])){
			$pid = getDescendantPid($_POST['pid']);
			if(is_numeric($pid)){
				shell_exec('kill -USR2 ' . $pid . ' ');
			}
		}
		//�ĊJ(CTRL + SHIFT + F5)
		if(preg_match('/^CS5$/',$_POST['value'])){
			$pid = getDescendantPid($_POST['pid']);
			if(is_numeric($pid)){
				shell_exec('kill -CONT ' . $pid . ' ');
			}
		}
// 		$oLog->info(__FILE__.':'.__LINE__.'process killer end');
	}
}

//�q����pid���擾
function getDescendantPid($pid){
	return getRecursiveChildPid($pid);
}

//�ċA�I�Ɏq����pid����葱����
//�q����pid���Ȃ��Ȃ�����I��
function getRecursiveChildPid($pid){
	$pids = shell_exec("ps --ppid " . $pid . " |grep -v PID|awk '{printf $1}'");
	$pidArray = explode("||",$pids);
	
	if(count($pidArray) > 2){
		return getRecursiveChildPid($pidArray[1]);
	}else{
		//count��1�Ȃ�w�b�_�s�݂̂Ȃ̂ŁA
		//���̂܂܂�pid��Ԃ�
		return $pid;
	}
}
?> 