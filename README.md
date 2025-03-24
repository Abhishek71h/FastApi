# FastApi with Podman 

Prerequisites

Ensure you have the following installed:

Python 3.11+

Podman (installed and configured for rootless mode)

```bash
pip install fastapi uvicorn
```

![allcommit](./f1.png)

Running the FastAPI Application <br>

Start the FastAPI application with Uvicorn: <br>
```bash
uvicorn main:app --host 0.0.0.0 --port 8000 --reload
```

Running with Podman<br>
Build the Podman image:<br>
```bash
podman build -t fastapi-app .
```

Run the container:<br>
```bash
podman run -p 8000:8000 fastapi-app
```

SCREENSHOT
![allcommit](./f2.png)



