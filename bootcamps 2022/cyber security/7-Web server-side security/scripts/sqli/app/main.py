import sqlite3
from flask import Flask, jsonify, request, g, Response

app = Flask(__name__)
app.database = "hmm.db"


def connect_db():
    return sqlite3.connect(app.database)


@app.route('/')
def index():
    return jsonify({'success': 'Hello world'})


@app.route('/super_secure_login', methods=['POST'])
def lazy_login():
    if request.method == 'POST':
        username, password = (
            request.json['username'], request.json['password'])
        g.db = connect_db()
        cur = g.db.execute(
            "SELECT * FROM ingehackadmins WHERE username = '%s' AND password = '%s'" % (username, password))
        if cur.fetchone():
            result = {'status': 'success',
                      "flag": "IngeHack{s3qu3ls_1nj3ct10ns_st1ll_3xists_???}"}
        else:
            result = {'status': 'fail'}
        g.db.close()
        return jsonify(result)


if __name__ == "__main__":
    app.run(host='0.0.0.0')
