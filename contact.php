<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $to = "digitrickk@gmail.com";  // 👉 replace with your email address
    $from = $_POST['email']; 
    $name = $_POST['name'];
    $subject = $_POST['subject'];
    $message = $_POST['message'];

    $headers = "From: $from" . "\r\n";
    $headers .= "Reply-To: $from" . "\r\n";
    $headers .= "Content-Type: text/html; charset=UTF-8" . "\r\n";

    $body = "
        <h2>New Contact Form Submission</h2>
        <p><strong>Name:</strong> $name</p>
        <p><strong>Email:</strong> $from</p>
        <p><strong>Subject:</strong> $subject</p>
        <p><strong>Message:</strong><br>$message</p>
    ";

    if (mail($to, "Contact Form: " . $subject, $body, $headers)) {
        echo "success";
    } else {
        echo "failed";
    }
}
?>
