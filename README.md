# lukaszlach / gitlab-docker-playground

## Running

If your are running this project for the first time - run GitLab and register GitLab Runner. GitLab default admin password is `passw0rd`, runner registration token is set to `initial-t0ken`.

```bash
make start
make register-gitlab-runner
make restart
```

After you are done with these steps you can now simply:

```bash
make start
```

to run both GitLab and GitLab Runner.

## Configuration

Configuration is stored in `.env` file and defaults to:

```
GITLAB_HOST=gitlab
GITLAB_REGISTRY_HOST=registry.gitlab
GITLAB_REGISTRY_HOST=pages.gitlab
```

> In order to access GitLab using your web browser you need to add all of these domains to your local `/etc/hosts` file pointing `127.0.0.1` (or Docker virtual IP)