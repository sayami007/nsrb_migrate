<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ja" lang="ja">
<head>
<meta http-equiv="content-type" content="text/html; charset=SJIS">
<meta name="robots" content="index,follow" />
<meta name="rating" content="general" />
<link href="./css/styleReset.css" rel="stylesheet" type="text/css" />
<link href="./css/index.css" rel="stylesheet" type="text/css" />
<link href="./css/UserMaster.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="/icons/favicon.ico" />
<!--�^�C�g��-->
<title><?php echo SITE_TITLE ?>-�@���[�U�ݒ�</title>
<script type="text/javascript" src="./js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="./js/common.js"></script>
<script type="text/javascript" src="./js/userSetting.js"></script>
<script type="text/javascript" src="./js/backButton.js"></script>
<script type="text/javascript" src="./js/tableWidthSetter.js"></script>
<script type="text/javascript" src="./js/scrollSync.js"></script>
<script type="text/javascript" src="./js/cmbSelect.js"></script>
<script type="text/javascript" src="./js/updateButton.js"></script>
<script type="text/javascript" src="./js/menuShortcut.js"></script>
</head>
<body>
<div class="contentbody">
	<div class="hblock">
		<div class="lhBlock">
			<h1> ���[�U�ݒ� </h1>
		</div>
	</div>
	<div class="mblock">
		<div class="userTable centerBlock"> 
			<div class="wrapTableHeader">
				<div class="tableHeader">
					<div class="tableL">
						<table>
							<tbody>
								<tr>
									<th class="user_id">���[�UID</th>
									<th class="user_name">���[�U��</th>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="tableR h_scrl">
						<table>
							<tbody>
								<tr>
									<th class="bg_color">�w�i�F</th>
									<th class="font_color">�����F</th>
									<th class="font_size">��������</th>
									<th class="hi_fontcolor">�����w�i�F</th>
									<th class="hi_fontcolor">���������F</th>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="tableData">
				<div class="wrapTableL">
					<div class="tableL v_scrl">
						<table>
							<tbody>
<?php 
foreach($resultArray as $row){
	$v_user_id             = $row['user_id'];
	$v_user_name           = $row['user_name'];
?>
								<tr class="settingRow">
									<td class="user_id"><?php echo $v_user_id; ?></td>
									<td class="user_name"><?php echo $v_user_name; ?></td>
								</tr>
<?php
}
?>
							</tbody>
						</table>
					</div>
				</div>
				<div class="tableDataRow tableR h_scrl v_scrl">
					<table>
						<tbody>
<?php 
foreach($resultArray as $row){
	$v_bg_color            = $clsConfig->getJapanColorName($row['bg_color']);
	$v_font_color          = $clsConfig->getJapanColorName( $row['font_color']);
	$v_font_size           = $row['font_size'];
	$v_reverse_bg_color    = $clsConfig->getJapanColorName($row['reverse_bg_color']);
	$v_reverse_font_color  = $clsConfig->getJapanColorName($row['reverse_font_color']);
					
	$style_font_color = '';
	$style_bg_color = '';
	if(preg_match('/#[0-9A-F]{6}/',$row['bg_color'])){
		$style_bg_color = 'background-color:' . $row['bg_color'] . ';';
	}
	if(preg_match('/#[0-9A-F]{6}/', $row['font_color'])){
		$style_font_color = 'color:' . $row['font_color'] . ';';
	}
	
	$style_rev_font_color = '';
	$style_rev_bg_color = '';
	if(preg_match('/#[0-9A-F]{6}/',$row['reverse_bg_color'])){
		$style_rev_bg_color = 'background-color:' . $row['reverse_bg_color'] . ';';
	}
	if(preg_match('/#[0-9A-F]{6}/', $row['reverse_font_color'])){
		$style_rev_font_color = 'color:' . $row['reverse_font_color']. ';';
	}
?>
							<tr class="settingRow" id="<?php echo $row['user_id']; ?>">
								<td><span class="bg_color" style="<?php echo $style_bg_color . $style_font_color ?>"><?php echo $v_bg_color; ?></span></td>
								<td><span class="font_color" style="<?php echo $style_bg_color . $style_font_color ?>"><?php echo $v_font_color; ?></span></td>
								<td><span class="font_size" ><?php echo $v_font_size; ?></span></td>
								<td><span class="reverse_bg_color" style="<?php echo $style_rev_bg_color . $style_rev_font_color ?>" ><?php echo $v_reverse_bg_color;  ?></span></td>
								<td><span class="reverse_font_color" style="<?php echo $style_rev_bg_color . $style_rev_font_color ?>" ><?php echo $v_reverse_font_color;  ?></span></td>
							</tr>
<?php
}
?>
						</tbody>
					</table>
				</div>
			</div>
		</div>	
		<div class="btmscreenblock">
			<div class="selectBlock">
				<form  action="UserMaster.php" method="post" name="frm">
					<div class="cmbBlock useridBlock">
						<label>���[�UID</label><span>�F</span>
<?php
$disabled = '';
if(!isset($loginUser['permission']) || strchr($loginUser['permission'],'0') !== False){
	$disabled = 'disabled="disabled"';
}
?>
						<select id="user_id" name="user_id"<?php echo ' '.$disabled; ?>>
<?php
foreach($resultArray as $row){
	$strSelect = '';
	if(strcmp($loginUser['user_id'],$row['user_id']) === 0){
		$strSelect = 'selected="selected"';
	}
?>
							<option value="<?php echo $row['user_id'];?>" <?php echo $strSelect; ?>><?php echo $row['user_id'];?></option>
<?php
}
?>
						</select>
					</div>
					<div class="cmbBlock usernameBlock">
						<label>���[�U��</label><span>�F</span>
						<select  id="user_name" name="user_name" disabled="disabled" >
<?php
foreach($resultArray as $row){
	$strSelect = '';
	if(strcmp($loginUser['user_id'],$row['user_id']) === 0){
		$strSelect = 'selected="selected"';
	}
?>
							<option value="<?php echo $row['user_name'];?>" <?php echo $strSelect; ?>><?php echo $row['user_name'];?></option>
<?php
}
?>
						</select>
					</div>
					<div class="cmbBlock bgcolorBlock">
						<label>�w�i�F</label><span>�F</span>
						<select  id="bg_color" name="bg_color">
<?php
$colorArray =array();
$colorArray = $clsConfig->getColorNameList();
foreach($colorArray as $key => $elem){
	$strSelect = '';
	if(strcmp($loginUser['bg_color'],$key) === 0){
		$strSelect = 'selected="selected"';
	}
?>
							<option value="<?php echo $key; ?>" <?php echo $strSelect; ?>><?php echo $elem; ?></option>
<?php
}
?>
						</select>
					</div>
					<div class="cmbBlock fcolorBlock">
						<label>�����F</label><span>�F</span>
						<select  id="font_color" name="font_color">
<?php
foreach($colorArray as $key => $elem){
	$strSelect = '';
	if(strcmp($loginUser['font_color'],$key) === 0){
		$strSelect = 'selected="selected"';
	}
?>
							<option value="<?php echo $key; ?>" <?php echo $strSelect; ?>><?php echo $elem; ?></option>
<?php
}
?>
						</select>
					</div>
					<div class="cmbBlock fsizeBlock">
						<label>�����T�C�Y</label><span>�F</span>
						<select  id="font_size" name="font_size">
<?php
for($i = MIN_F_SIZE;$i <= MAX_F_SIZE;$i++){
	$strSelect = '';
	if(strcmp($loginUser['font_size'],$i) === 0){
		$strSelect = 'selected="selected"';
	}
?>
							<option value="<?php echo $i; ?>" <?php echo $strSelect; ?>><?php echo $i; ?></option>
<?php
}
?>
						</select>
					</div>
					<div class="cmbBlock reverseBgcolorBlock">
						<label>�����w�i�F</label><span>�F</span>
						<select  id="reverse_bg_color" name="reverse_bg_color">
<?php
foreach($colorArray as $key => $elem){
	$strSelect = '';
	if(strcmp($loginUser['reverse_bg_color'],$key) === 0){
		$strSelect = 'selected="selected"';
	}
?>
							<option value="<?php echo $key; ?>" <?php echo $strSelect; ?> ><?php echo $elem; ?></option>
<?php
}
?>
						</select>
					</div>
					<div class="cmbBlock reverseFontcolorBlock">
						<label>���������F</label><span>�F</span>
						<select  id="reverse_font_color" name="reverse_font_color">
<?php
foreach($colorArray as $key => $elem){
	$strSelect = '';
	if(strcmp($loginUser['reverse_font_color'],$key) === 0){
		$strSelect = 'selected="selected"';
	}
?>
							<option value="<?php echo $key; ?>" <?php echo $strSelect; ?>><?php echo $elem; ?></option>
<?php
}
?>
						</select>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="fblock">
		<div class="leftBlock">
			<div class="menuBlock">
				<label for="menuno">���j���[�ԍ��F</label>
				<input class="menuno" type="text" id="menuno" name="menuno" maxlength="2">
			</div>
		</div>
		<div class="rightBlock">
			<div class="rightbottn">
				<input class="button" id="submit" type="button" value="�X�V" />
				<input class="button backButton" type="button" value="�߂�" />
			</div>
		</div>
	</div>
</div>
</body>
</html>