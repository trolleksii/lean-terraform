# lean-terraform

Lean terraform image based on [hashicorp/terraform](https://hub.docker.com/r/hashicorp/terraform) and [GoogleContainerTools/distroless](https://github.com/GoogleContainerTools/distroless).

# How-to

Mount the directory with your terraform code into container's `/code` and run the commands you want.

```
docker run --rm -it -v $(pwd):/code init
docker run --rm -it -v $(pwd):/code plan
docker run --rm -it -v $(pwd):/code apply
```