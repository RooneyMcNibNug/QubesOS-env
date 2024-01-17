## multimedia

**Type: AppVM**

**Template: debian-12-multimedia**

**Networking: vpn-net**

- You can follow most of https://forum.qubes-os.org/t/configuring-a-multimedia-templatevm/19055 for this, but there are a few things off/outdated in that post:
    - Debian is at version 12 currently
    - The Spotify key is old, and the steps there are uneccesary. From a terminal session within your `debian-12-multimedia` TemplateVM, do: `$ curl --proxy http://127.0.0.1:8082 -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor | sudo tee /usr/share/keyrings/spotify.gpg > /dev/null` and then `$ echo "deb [signed-by=/usr/share/keyrings/spotify.gpg] http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list && sudo apt update` before installing the Spotify package vai `apt`
    - VLC is included in a mainline repo, so you can ignore the steps for that and just do `sudo apt install vlc`
    - You con't have to install Chrome.. I didn't do that, anyways
 
- There might be some other non-mainline application you want to install on here that would require the testing repo for debain, you can open a terminal in `debian-12-multipedia` TemplateVM and do `$ sudo vim /etc/apt/sources.list` and add the following to it to accomplish this:

```
# Testing repository - main, contrib and non-free branches
deb http://http.us.debian.org/debian testing main non-free contrib
deb-src http://http.us.debian.org/debian testing main non-free contrib
```
