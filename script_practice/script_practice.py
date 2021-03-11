from pynvim import attach

nvim = attach("socket", path="[address]")
nvim.command('echo "hello world!"')
