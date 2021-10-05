mkdir myproject
dir myproject
py -3 -m venv venv
venv\Scripts\activate
pip install Flask
pip install psycopg2-binary
echo "from flask import Flask" > "app.py"
echo "app = Flask(__name__)" >> "app.py"
echo "@app.route(\"/\")" >> "app.py"
echo "def hello_world():" >> "app.py"
echo "  return \"<p>Hello, World!</p>\"" >> "app.py"
mkdir templates
mkdir static
set FLASK_APP=app
set FLASK_ENV=development
flask run