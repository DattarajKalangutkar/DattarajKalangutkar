<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;
// include 'includes/config.php';  //rutvij gawas
function sendMail($to, $subject, $message,$data, $headers){  
    
    $mail = new PHPMailer(true);
    //$mail->SMTPDebug = SMTP::DEBUG_SERVER; // Enable verbose debug output
    $mail->isSMTP(); // Send using SMTP
    // $mail->SMTPOptions = array(
    //     'ssl' => array(
    //     'verify_peer' => false,
    //     'verify_peer_name' => false,
    //     'allow_self_signed' => true
    //     )
    //     );
    $mail->Host       = HOST_MAIL; // Set the SMTP server to send through      //rutvij gawas||22-01-2021||email host
    $mail->SMTPSecure = 'tls';
    $mail->SMTPAuth   = true; // Enable SMTP authentication
    $mail->Username   = HOST_USERNAME; // SMTP username                        //rutvij gawas||22-01-2021||email username
    $mail->Password   = HOST_PASSWORD; // SMTP password                         //rutvij gawas||22-01-2021||email password
 

    //$mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS; // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` also accepted

    // $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
    $mail->Port       =587; // TCP port to connect to

    $mail->setFrom(HOST_USERNAME, 'Pujakarwalo');       //rutvij gawas||22-01-2021||email username
    $mail->addAddress($to, ''); // Add a recipient


    $mail->isHTML(true); // Set email format to HTML


    $mail->Subject =  $subject;
    $mail->Body = $message;
    $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

     
    try {
        $mail->send();
        return "Message has been sent successfully";
    } catch (Exception $e) {
        return "Mailer Error: " . $mail->ErrorInfo;
    }

}




function sendAttachmentMail($to, $subject, $message,$data, $headers)
{
    $mail = new PHPMailer(true);

    //$mail->SMTPDebug = SMTP::DEBUG_SERVER; // Enable verbose debug output
    $mail->isSMTP(); // Send using SMTP
    // $mail->SMTPOptions = array(
    //     'ssl' => array(
    //     'verify_peer' => false,
    //     'verify_peer_name' => false,
    //     'allow_self_signed' => true
    //     )
    //     );
    
    $mail->Host       =  HOST_MAIL; // Set the SMTP server to send through    //rutvij gawas||22-01-2021||email host
    $mail->SMTPSecure = 'tls';
    $mail->SMTPAuth   = true; // Enable SMTP authentication
    $mail->Username   = HOST_USERNAME; // SMTP username          //rutvij gawas||22-01-2021||email username               
    $mail->Password   =  HOST_PASSWORD;  // SMTP password          //rutvij gawas||22-01-2021||email password


    // $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS; // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` also accepted

    // $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
    $mail->Port       =587; // TCP port to connect to

    $mail->setFrom(HOST_USERNAME, 'Pujakarwalo');         //rutvij gawas||22-01-2021||email username
    $mail->addAddress($to, ''); // Add a recipient 

    $mail->IsHTML(true);
    $mail->AddAttachment($data['path_attachment'], 'invoice.pdf');

    //$mail->isHTML(true); // Set email format to HTML


    $mail->Subject =  $subject;
    $mail->Body = $message;
    $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

    
    try {
        $mail->send();
        return "Please Check Mail.";
    } catch (Exception $e) {
        return "Mailer Error: " . $mail->ErrorInfo;
    }

}

    function sendAttachmentMailCC($to, $subject, $message,$data, $headers, $cc){

   
    
        $mail = new PHPMailer(true);
    
        //$mail->SMTPDebug = SMTP::DEBUG_SERVER; // Enable verbose debug output
        $mail->isSMTP(); // Send using SMTP
        // $mail->SMTPOptions = array(
        //     'ssl' => array(
        //     'verify_peer' => false,
        //     'verify_peer_name' => false,
        //     'allow_self_signed' => true
        //     )
        //     );
     
        $mail->Host       = HOST_MAIL;  // Set the SMTP server to send through     //rutvij gawas||22-01-2021||email host
        $mail->SMTPSecure = 'tls';
        $mail->SMTPAuth   = true; // Enable SMTP authentication
        $mail->Username   = HOST_USERNAME;  // SMTP username                 //rutvij gawas||22-01-2021||email username
        $mail->Password   =  HOST_PASSWORD; // SMTP password                  //rutvij gawas||22-01-2021||email password
    
    
        //$mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS; // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` also accepted
    
        // $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
        $mail->Port       =587; // TCP port to connect to
    
        $mail->setFrom(HOST_USERNAME, 'Pujakarwalo');      //rutvij gawas||22-01-2021||email username
        $mail->addAddress($to, ''); // Add a recipient 
        $mail->addCc($cc, '');

        $mail->IsHTML(false);
        $mail->AddAttachment($data['path_attachment'], 'invoice.pdf');

        //$mail->isHTML(true); // Set email format to HTML
    
    
        $mail->Subject =  $subject;
        $mail->Body = $message;
        $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';
    
     
        try {
            $mail->send();
            return "Please Check Mail.";
        } catch (Exception $e) {
            return "Mailer Error: " . $mail->ErrorInfo;
        }

    }

    function contactUs($from, $subject, $message,$data, $headers){


         

        $mail = new PHPMailer(true);
    
        //$mail->SMTPDebug = SMTP::DEBUG_SERVER; // Enable verbose debug output
        $mail->isSMTP(); // Send using SMTP
        // $mail->SMTPOptions = array(
        //     'ssl' => array(
        //     'verify_peer' => false,
        //     'verify_peer_name' => false,
        //     'allow_self_signed' => true
        //     )
        //     );
     
        $mail->Host       = HOST_MAIL; // Set the SMTP server to send through  //rutvij gawas||22-01-2021||email host
        $mail->SMTPSecure = 'tls';
        $mail->SMTPAuth   = true; // Enable SMTP authentication
        $mail->Username   = HOST_USERNAME;  // SMTP username           //rutvij gawas||22-01-2021||email username
        $mail->Password   = HOST_PASSWORD; // SMTP password             //rutvij gawas||22-01-2021||email passord
         
     
        //$mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS; // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` also accepted
    
        // $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
        $mail->Port       =587; // TCP port to connect to
        //$to="nitiwadji149@gmail.com";
        $mail->setFrom($from, $data);
        $mail->addAddress(HOST_RECIPIENT, 'Pujakarwalo'); // Add a recipient      /rutvij gawas||22-01-2021||email recipient
        $mail->isHTML(true); // Set email format to HTML
    
    
        $mail->Subject =  $subject;
        $mail->Body = $message;
        $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';
    
     
        try {
            $mail->send();
            return "Message has been sent successfully";
        } catch (Exception $e) {
            return "Mailer Error: " . $mail->ErrorInfo;
        }

    }



?>