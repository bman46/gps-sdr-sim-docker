# GPS-SDR-SIM Docker
This is a dockerfile for the [GPS-SDR-SIM](https://github.com/osqzss/gps-sdr-sim) project.
## Usage
```bash
docker build . -t gps-sdr-sim # Build the docker image
docker run -v ./:/root/data gps-sdr-sim --help # show options
docker run -v ./:/root/data gps-sdr-sim -e brdc0490.25n # run with brdc0490.25n file
```