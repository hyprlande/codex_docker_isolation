### Isolating codex in docker

#### With this setup codex will only have access to `$HOME/.codex`(for codex data persistance) and the directory it was started in

#### WARNING
Codex will have full access to directory it was started from. So don't start codex in root of your project if it contains valuable data(`.env` file for example), instead start it in `src/` directory of your project. If you need to use codex with files in project root, move files with creds away temporarely.

#### Steps:
1. Clone the repo and cd into it.
2. Build the docker image with `docker build --no-cache -t codex .`
3. `cd` into your project. 
4. Run codex with `docker run -it --rm -v "$PWD":/workspace  -v $HOME/.codex:/root/.codex codex --sandbox danger-full-access --ask-for-approval on-request`. 
5. Optional. Create an alias for the commands above. 


