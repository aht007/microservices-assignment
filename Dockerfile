FROM python:3.7.3-stretch

# Create a working directory
WORKDIR /workspace

# Copy source code to working directory
COPY . /workspace/

# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --no-cache-dir  -r requirements.txt

# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]
