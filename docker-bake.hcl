target "default" {
    context = "."
    dockerfile = "Dockerfile"
    tags = [
        "localhost/swarmtail:latest"
    ]
}
