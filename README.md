# Functionary Docker Image

[![img-github]][link-github]
[![img-docker]][link-docker]
[![img-runpod]][link-runpod]

Ready-to-deploy Docker image including the [Functionary LLM][link-functionary] served via an OpenAI-Compatible API.

> [!WARNING]   
> This LLM model supports Function Calling. **However** It needs some hacking on the client-side
> because Functionary vLLm script doesn't respect Open-AI API Function Calling format.  
> I will provide an example project on how to achieve that in the coming days.

> [!IMPORTANT] 
> There is no possibility to set an API Key at the moment.
> But I will work on adding that option as an environment variable.  
> In the meantime, don't share your endpoint with anybody.

## Specifications

### API

- Default Port: `8000`
- Path: `/v1`

Example config for your OpenAI-compatible client (here using a RunPod endpoint):

```json
{
  "model": "musabgultekin/functionary-7b-v1",
  "api_base": "https://[YOUR_CONTAINER_ID]-8000.proxy.runpod.net/v1",
  "api_key": "functionary", // Dummy API Key since it can't be `null`
  "api_type": "open_ai"
}
```

### Docker Image

#### Base

- [nvidia/pytorch](https://catalog.ngc.nvidia.com/orgs/nvidia/containers/pytorch)

#### Content

- Python 3.9
- [Functionary LLM](https://github.com/MeetKai/functionary)
- [vLLM Server](https://github.com/vllm-project/vllm)

## Deployment

### RunPod

[![img-runpod]][link-runpod]

---

[img-docker]: https://img.shields.io/docker/pulls/ivangabriele/functionary?style=for-the-badge
[img-runpod]: https://img.shields.io/badge/RunPod-Deploy-673ab7?style=for-the-badge
[img-github]: https://img.shields.io/badge/Github-Repo-black?logo=github&style=for-the-badge
[img-github-actions]: https://img.shields.io/github/actions/workflow/status/ivangabriele/docker-functionary/main.yml?branch=main&style=for-the-badge

[link-docker]: https://hub.docker.com/r/ivangabriele/functionary
[link-functionary]: https://github.com/MeetKai/functionary
[link-github]: https://github.com/ivangabriele/docker-functionary
[link-github-actions]: https://github.com/ivangabriele/docker-functionary/actions/workflows/main.yml
[link-runpod]: https://runpod.io/gsc?template=sihvefhjru&ref=s0k66ov1
