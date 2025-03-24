FROM python

# Update system and install pip
RUN apt update && apt upgrade -y 
RUN apt install -y python3-pip

# Copy the entire PythonProject directory
COPY PythonProject /flask/
WORKDIR /flask/

# Install dependencies
RUN pip install -r Project/requirements.txt

# Start the Flask application
ENTRYPOINT [ "python", "Project/app.py" ]


