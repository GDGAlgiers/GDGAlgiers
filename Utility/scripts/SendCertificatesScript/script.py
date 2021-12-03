import csv
import os
from difflib import SequenceMatcher
from dotenv import load_dotenv
from utils import send_dynamic_mail_with_attachment

# load environment variables from the .env file
load_dotenv()


# list of prticipants joint with name of the certificate file
participants_list = []
with open('participants.csv', newline='') as csvfile:
    spamreader = csv.reader(csvfile, delimiter=',', quotechar='|')
    for participant in list(spamreader)[1:]:
        for root, dirs, files in os.walk("Participants"):
            # max match to check the ressemblance
            max_match = [0.0, ""]
            for filename in files:
                # use difflib to check the matching
                s = SequenceMatcher(None, filename.lower()
                                    [:-4], participant[1].lower())
                if s.ratio() > max_match[0]:
                    max_match[0] = s.ratio()
                    max_match[1] = filename
            participants_list.append(
                {'team_name': participant[0], 'participant_name': participant[1], 'participant_mail': participant[2], 'participant_certificate': max_match[1]})

if __name__ == '__main__':
    for participant in participants_list:
        status = send_dynamic_mail_with_attachment(os.environ['SEND_GRID_API_KEY'], os.environ['EMAIL_TEMPLATE_ID'], **{
            'sender_mail': "gdg.algiers@esi.dz",
            'subject': '[DevFest Algiers 2021] Certificate of Participation',
            **participant
        })
        print(status)
