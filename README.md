# Example to Run

## Build the Image

```sh
docker build . -t terraformvm:1 
```

## First Time

```sh
docker run --name terraform-1 --mount src="$(pwd)",target=/app,type=bind -it terraformvm:1 /bin/bash
```

Run `aws configure` to configure access keys.

## Next times

```sh
docker start -ai terraform-1
```
