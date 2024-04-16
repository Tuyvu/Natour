import flask
import pyodbc
from flask_cors import CORS

app=flask.Flask(__name__)
CORS(app)
connect_str="DRIVER={SQL SERVER};SERVER=DESKTOP-QIS45MJ\MSSQLSERVERN04;DATABASE=Natour;UID=sa;PWD=Thuycute1233;Trusted_Connection=yes"
conn=pyodbc.connect(connect_str)

@app.route("/kh/add", methods=['POST'])
def addKH():
    try:
        ma = flask.request.json.get("MaKH")
        tk = flask.request.json.get("TenKH")
        dt = flask.request.json.get("SoDienThoai")
        em = flask.request.json.get("Email")
        mk = flask.request.json.get("MK")
        cursor = conn.cursor()
        data = (ma, tk,dt, em, mk)
        cursor.execute("INSERT INTO KhachHang (MaKH, TenKH , SoDienThoai, Email, MK) VALUES (?, ?, ?, ?, ?)", data)
        conn.commit()
        
        resp = flask.jsonify({"Mess": "Thêm mới thành công"})
        resp.status_code = 200
        return resp
    except Exception as e:
        print(e)
@app.route("/kh/findid/", methods=['GET'])
def findMKH():
    try:
        mk = flask.request.args.get('MK')
        SDT = flask.request.args.get('SDT')
        # Giả sử bạn đã khởi tạo biến 'conn' như là connection đến cơ sở dữ liệu của bạn.
        cusor=conn.cursor()
        cusor.execute("SELECT * FROM KhachHang WHERE SoDienThoai=? AND MK=?", (SDT, mk))
        result=[]
        keys=[]
        for i in cusor.description:
            keys.append(i[0])
        for val in cusor.fetchall():
            result.append(dict(zip(keys,val)))
        resp=flask.jsonify(result)
        resp.status_code=200
        return resp
    except Exception as e:
        print(e)
if __name__=="__main__" :
    app.run()