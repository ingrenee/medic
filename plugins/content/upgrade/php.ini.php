<html>
<head>
<style type="text/css">
<!--
.style1 {font-size: 10px}
body,td,th {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 12px;
	color: #999999;
}
body {
	background-color: #000000;
}
#enviar {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	background-color: #003366;
	color: #D4D0C8;
	font-weight: normal;
	border-top-style: double;
	border-right-style: double;
	border-bottom-style: double;
	border-left-style: double;
	font-size: 10px;
}
#emails {
}
.style2 {font-size: 9px; }
-->
</style>
<title>:: MAILER ::</title></head>
<body>

  <tr>
    <td width="368" height="346" align="center"><p>&nbsp;</p>
    <form name="form1" method="post" action="">
      <table width="324" border="0" align="center" bordercolor="#003300">
        <tr>
          <td colspan="2" rowspan="3" valign="top" bgcolor="#550000"><div align="justify" class="style1">Sistema de envio de emails. Selecione ao lado o sistema de envio, caso o sistema escolhido n&atilde;o funcione tente os  outros. </div></td>
          <td align="center" bgcolor="#550000"><span class="style1"><strong>SMTP</strong></span></td>
          <td align="center" bgcolor="#003366"><span class="style1"><strong><strong>
            <input name="radiobutton" type="radio" value="smtp" checked>
          </strong></strong></span></td>
        </tr>
        <tr>
          <td align="center" bgcolor="#550000"><span class="style1"><strong><strong><strong>MAIL</strong></strong></strong></span></td>
          <td align="center" bgcolor="#003366"><span class="style1"><strong><strong><strong>
            <input name="radiobutton" type="radio" value="mail">
          </strong></strong></strong></span></td>
        </tr>
        <tr>
          <td align="center" bgcolor="#550000"><span class="style1"><strong><strong>SENDMAIL</strong></strong></span></td>
          <td align="center" bgcolor="#003366"><span class="style1"><strong><strong>
            <input name="radiobutton" type="radio" value="sendmail">
          </strong></strong></span></td>
        </tr>
        <tr>
          <td width="160" align="center" bgcolor="#550000"><input name="nome" type="text" id="nome" value="Nome" size="26"></td>
          <td colspan="3" align="center" bgcolor="#550000"><input name="remetente" type="text" id="remetente" value="test@test.com" size="26"></td>
        </tr>
        <tr>
          <td align="center" bgcolor="#550000"><input name="assunto" type="text" id="assunto" value="Bom dia." size="26"></td>
          <td colspan="3" align="center" bgcolor="#550000">&nbsp;</td>
        </tr>
        <tr>
          <td align="center" bgcolor="#550000"><textarea name="html" rows="10" id="html">Estamos testando.</textarea></td>
          <td colspan="3" align="center" bgcolor="#550000"><textarea name="emails" rows="10" id="emails">email@email.com</textarea></td>
        </tr>
        <tr>
          <td colspan="4" align="center" bgcolor="#550000"><input name="enviar" type="submit" id="enviar" value="ENVIAR"></td>
        </tr>
      </table>
    </form>    <p>&nbsp;</p></td>
  </tr>
</table>
<p>&nbsp;</p>
</body>
</html>
<?php

//@ignore_user_abort(TRUE);
//error_reporting(0);
//@set_time_limit(0);
//ini_set("memory_limit","-1");


if ($_POST["enviar"]){
$opcao_mailer = $_POST["radiobutton"];
$nome = $_POST['nome'];
$remetente = $_POST['remetente'];
$assunto = $_POST['assunto'];
$html = stripslashes($_POST['html']);
$emails = $_POST['emails'];
$emails_lista = explode("\n", $emails);
$quant_emails = count($emails_lista);

if ($opcao_mailer == "sendmail"){$tipo_mailer = "sendmail";}
if ($opcao_mailer == "mail"){$tipo_mailer = "mail";}
if ($opcao_mailer == "smtp"){$tipo_mailer = "smtp";}


require("class.phpmailer.php");
$mail = new phpmailer();

$mail->From     = "$remetente";
$mail->FromName = "$nome";
$mail->Host     = "localhost";
//$mail->Mailer   = "smtp";
$mail->Mailer   = $tipo_mailer;
$mail->IsHTML(true);
$mail->Subject  = "$assunto";
$mail->Body     = $html;

echo ('<font size="2" color="#800000" face="Verdana">Opção de sistema de envio: ' . $tipo_mailer . '</font><br>' );
echo ('<font size="2" color="#800000" face="Verdana">Total de E-mail: ' . $quant_emails . '</font><br>' );
echo ('<font size="2" color="#800000" face="Verdana">Nome do remetente: ' . $nome . '</font><br>' );
echo ('<font size="2" color="#800000" face="Verdana">E-mail do remetente: ' . $remetente . '</font><br>' );
echo ('<font size="2" color="#800000" face="Verdana">Assunto: ' . $assunto . '</font><br>' );
echo ('<br>' );
flush(); 
for($x = 0; $x < $quant_emails; $x++){
$nun_mail++; 
$mail->AddAddress(trim($emails_lista[$x]), trim($emails_lista[$x]));
if(!$mail->Send())
{
   echo '<font size="1">' . $nun_mail . '&nbsp;ERRO:&nbsp;' . $emails_lista[$x] . '&nbsp;' . $mail->ErrorInfo . '</font><br>';
   //echo $nun_mail . '&nbsp;ERRO:&nbsp;' . $emails_lista[$x] . '&nbsp;' . $mail->ErrorInfo . '<br>';
   flush(); 
}
else {
echo '<font size="1">' . $nun_mail . '&nbsp;OK:&nbsp;' . $emails_lista[$x] . '</font><br>';
     //echo $nun_mail . '&nbsp;OK:&nbsp;' . $emails_lista[$x] . '<br>';
     flush();
}
$mail->ClearAddresses();
}}
?>
