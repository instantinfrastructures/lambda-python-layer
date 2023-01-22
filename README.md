# Lambda Python Layer

Builds a Python 3.8 AWS Lambda layer based on packages in specified in the requirements.txt.

## Requirements

- Docker
- Make

## Usage

1. Clone the repository
2. Modify the `requirements.txt` file to include desired Python packages
3. Run `make` to build the layer.

    The Python layer is built in a Docker image, copied out to the current directory as `python-layer.zip`, and then the Docker image is removed. 

### Commands

Typical use:
```sh
make
```
