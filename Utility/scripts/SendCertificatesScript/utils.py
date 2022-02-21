import sendgrid
import os
import base64
from sendgrid.helpers.mail import Mail,Attachment, FileContent, FileName, FileType, Disposition

def send_dynamic_mail_with_attachment(api_key,template_id,**mail_params):
    sg = sendgrid.SendGridAPIClient(api_key=api_key)
    message = Mail(
        subject=mail_params['subject'],
        from_email=mail_params['sender_mail'],
        to_emails=[(mail_params['participant_mail'],mail_params['participant_name'])])
    # pass custom values for our HTML placeholders
    message.dynamic_template_data = {
        **mail_params
    }

    with open('Participants/'+mail_params['participant_certificate'], 'rb') as f:
        data = f.read()
        f.close()
    encoded_file = base64.b64encode(data).decode()
    attachedFile = Attachment(
        FileContent(encoded_file),
        FileName(mail_params['participant_certificate']),
        FileType('application/pdf'),
        Disposition('attachment')
    )
    message.attachment = attachedFile
    message.template_id = template_id
    # create our sendgrid client object, pass it our key, then send and return our response objects
    try:
        response = sg.send(message)
        code, body, headers = response.status_code, response.body, response.headers
        print(f"Response code: {code}")
        print(f"Response headers: {headers}")
        print(f"Response body: {body}")
        print("Dynamic Messages Sent!")
    except Exception as e:
        print("Error: {0}".format(e))
    return str(response.status_code)


