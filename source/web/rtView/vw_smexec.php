<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ja" lang="ja">
<head>
<meta http-equiv="content-type" content="text/html; charset=Shift_JIS"/>
<meta name="robots" content="index,follow" />
<meta name="rating" content="general" />
<link rel="stylesheet" href="./css/styleReset.css" type="text/css" />
<link rel="stylesheet" href="./css/index.css" type="text/css" />
<link rel="shortcut icon" href="/icons/favicon.ico" />
<title><?php echo SITE_TITLE; ?> - </title>
<script type="text/javascript" src="./js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="./js/common.js"></script>
<script type="text/javascript" src="./js/backButton.js"></script>
<script type="text/javascript" src="./js/userSetting.js"></script>
<script type="text/javascript" src="./js/dataUtilExec.js"></script>
<script type="text/javascript" src="./js/specialKey.js"></script>
<script type="text/javascript" src="./js/inpCheckFromat.js"></script>
</head>
<body>
<div class="contentbody">
	<div class="hblock">
		<div class="leftBlock">
			<h1><?php echo str_replace(' ','&nbsp;',$sani['title']); ?></h1>
		</div>
		<div class="rightBlock">
				<div style="display:inline-block; width:50%;">
				<label for="sk" >MENUF</label>
				<select id="skSelect" name="skSelect" >
						<option value="">&nbsp;</option>
					<option value="CS4">β~</option>
					<option value="CS5">ΔJ</option>
					<option value="C8">vϊό</option>
					<option value="C9">Ζ±ϊό</option>
					</select>
				</div>
			<input class="button" id="skButton"  type="button" value="Iπ" />
		</div>
	</div>
	<div class="mblock">
		<div class="screen">
			<p><span>Ε[½δ[Δ‘θΔ‘ΐs</span></p>
<?php 
//ifΙΚηΘ―κΞϊ»l
$execParam = "";
if(isset($sendParam)){
	$execParam = $sendParam;
}
?>
			<input type="text" id="execParam" value="<?php echo $execParam; ?>" readonly="readonly" />
		</div>
	</div>
	<div class="status">
		<div id="status1"><span></span>
		</div>
		<div id="status2"><span></span>
		</div>
		<div id="status3"><span></span>
		</div>
		<div id="status4"><span></span>
		</div>
		<div id="status5"><span></span>
		</div>
		<div id="status6"><span></span>
		</div>
		<div id="status7"><span></span>
		</div>
	</div>
	<div class="fblock">
		<div class="leftBlock">
<?php if(!empty($clsBP->tempnameOut)){ ?>
			<input id="outfname" type="hidden" name="outfname" value="<?php echo $clsBP->tempnameOut;?>" />
<?php } ?>
<?php if(!empty($clsBP->tempnameIn)){ ?>
			<input id="infname" type="hidden" name="infname" value="<?php echo $clsBP->tempnameIn;?>" />
<?php } ?>
			<input class="uset" type="hidden" id="fsize" name="fsize" value="<?php if(isset($_SESSION['font_size']) && !empty($_SESSION['font_size'])){ echo $_SESSION['font_size']; } ?>" />
			<input class="uset" type="hidden" id="fcolor" name="fcolor" value="<?php if(isset($_SESSION['font_color']) && !empty($_SESSION['font_color'])){ echo $_SESSION['font_color']; } ?>" />
			<input class="uset" type="hidden" id="bgcolor" name="bgcolor" value="<?php if(isset($_SESSION['bg_color']) && !empty($_SESSION['bg_color'])){ echo $_SESSION['bg_color']; } ?>" />
			<input class="uset" type="hidden" id="sfcolor" name="sfcolor" value="<?php if(isset($_SESSION['reverse_font_color']) && !empty($_SESSION['reverse_font_color'])){ echo $_SESSION['reverse_font_color']; } ?>" />
			<input class="uset" type="hidden" id="sbgcolor" name="sbgcolor" value="<?php if(isset($_SESSION['reverse_bg_color']) && !empty($_SESSION['reverse_bg_color'])){ echo $_SESSION['reverse_bg_color']; } ?>" />
		</div>
		<div class="rightBlock">
			<input  class="button backButton" type="button" value="ίι" />
			<div style="display:inline-block;">
				<form name="foot" action="./index.php" method="get" class="foot">
					<input type="hidden" name="typ" value="<?php echo $sani['typ'] ?>" />
				</form>
			</div>
		</div>
	</div>
</div>
</body>
</html>