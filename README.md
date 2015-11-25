
# docker-mailpile

```yaml
---
mailpile_data:
  image: cheine/mailpile
  entrypoint: /bin/true
  volumes:
    - ./Mailpile:/root/.local/share/Mailpile
    - ./gnupg:/root/.gnupg

mailpile:
  image: cheine/mailpile
  restart: always
  volumes_from:
    - mailpile_data
  ports:
    - 127.0.0.1:33411:33411
```
