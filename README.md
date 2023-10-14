# Functionary Docker Image

[![img-docker]][link-docker]
<!-- [![img-github-actions]][link-github-actions] -->

Ready-to-deploy Docker image for [Functionary LLM][link-functionary] served as an OpenAI-Compatible API.

## Base

- [nvidia/pytorch](https://catalog.ngc.nvidia.com/orgs/nvidia/containers/pytorch)

## What's in this container?

- Python 3.9
- [Functionary LLM](https://github.com/MeetKai/functionary)
- [vLLM Server](https://github.com/vllm-project/vllm)

<!-- ## Deployment

### RunPod

Just click the button below to deploy this container to RunPod:

[![Deploy on RunPod](https://img.shields.io/badge/RunPod-Deploy-673ab7?style=for-the-badge)](https://runpod.io/gsc?template=qk29nkmbfr&ref=s0k66ov1) -->

---

[img-docker]: https://img.shields.io/docker/pulls/ivangabriele/functionary?style=for-the-badge
[img-runpod]: https://img.shields.io/badge/RunPod-Deploy-673ab7?style=for-the-badge
[img-github-actions]: https://img.shields.io/github/actions/workflow/status/ivangabriele/docker-functionary/main.yml?branch=main&style=for-the-badge

[link-docker]: https://hub.docker.com/r/ivangabriele/functionary
[link-functionary]: https://github.com/MeetKai/functionary
[link-github-actions]: https://github.com/ivangabriele/docker-functionary/actions/workflows/main.yml
[link-runpod]: https://runpod.io/gsc?template=qk29nkmbfr&ref=s0k66ov1
