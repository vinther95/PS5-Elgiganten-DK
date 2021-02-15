import smtplib, ssl

sender_email = "sender@gmail.com"
receiver_email = "receiver@gmail.com"
message = """\
Subject: PS5 paa lager

Bash script har sendt den her mail, saa der er en PS5 paa lager i elgiganten"""

port = 465  # For SSL
password = ""

# Create a secure SSL context
context = ssl.create_default_context()

with smtplib.SMTP_SSL("smtp.gmail.com", port, context=context) as server:
    server.login(sender_email, password)
    server.sendmail(sender_email, receiver_email, message)
