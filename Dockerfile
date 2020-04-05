ARG TERRAFORM_VERSION_TAG=latest
FROM hashicorp/terraform:$TERRAFORM_VERSION_TAG as base

FROM gcr.io/distroless/static
WORKDIR /code
COPY --from=base /bin/terraform /bin/terraform
USER 1000
ENTRYPOINT ["/bin/terraform"]
