## Development

First, run the development server:

```bash
# Create a network, which allows containers to communicate
# with each other, by using their container name as a hostname
docker network create my_network

# Build dev using new BuildKit engine
docker compose -f docker-compose.yml build

# Up dev
docker compose -f docker-compose.yml up
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

You can start editing the page by modifying `pages/index.tsx`. The page auto-updates as you edit the file.


## Useful commands

```bash
# Stop all running containers
docker kill $(docker ps -q) && docker rm $(docker ps -a -q)

# Free space
docker system prune -af --volumes
```


# Deploying to GitHub Pages

This example supports deloying a static Next.js application (using `next export`) to GitHub Pages.

The `out` directory should not be ignored by version control.


### Deploy to GitHub Pages

1.  Create a new public GitHub repository.
1.  Edit `next.config.js` to match your GitHub repository name.
1.  Push the starter code to the `main` branch.
1.  Run the `deploy` script (e.g. `npm run deploy`) to create the `gh-pages` branch.
1.  On GitHub, go to **Settings** > **Pages** > **Source**, and choose `gh-pages` as the branch with the `/root` folder. Hit **Save**.
1.  Make a change.
1.  Run the `deploy` script again to push the changes to GitHub Pages.

Congratulations! You should have a URL like:

```bash
https://<github-user-name>.github.io/<github-project-name>/
```
