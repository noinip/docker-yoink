docker-yoink
============

Dockerfile for yoink: https://github.com/phracker/yoink

Run it like: docker run -d -h myhost --name="yoink" -v path/to/config:/root -v path/to/watch/dir:/blackhole pinion/docker-yoink

Optionally you can set -v path/to/media:/media if you plan to set storage_dir in .yoinkrc

After running you will have yoink installed and setup to run once an hour but you still need to edit the .yoinkrc file to put in your settings. Options are as follows (via https://github.com/phracker/yoink/blob/master/README.md)

Yoink settings are stored in ~/.yoinkrc and this file will be auto-generated on initial run. Accepted parameters are:

- `user`: your what.cd username
- `pass`: your what.cd password
- `target`: your torrent client watch directory
- `max_age`: the maximum age of a torrent in days that yoink will download. If left blank, yoink will not check the age of the torrent.
- `max_storage_in_mb`: the maximum size in megabytes of your storage directory. If the size of your storage directory exceeds the specified size, yoink will stop downloading new torrents. This runs on the assumption that your torrent client preallocated the space required for each torrent immediately after the .torrent folder is added to your watch directory. If left blank, yoink will not check the size of your storage area. This is intended for seedboxes with limited storage quotas.
- `storage_dir`: Your torrent data directory. If left blank, defaults to your home directory.
- `track_by_index_number`: TRUE or FALSE. If true, will write all downloaded torrent IDs to ~/.yoink.db and use this as the primary mechanism for checking if a given torrent has already been yoinked.

[Filter Configuration Information](http://git.io/5ZFi9A)


Wow. Much tipping: DR5dCKF8m5x8VWMtofpGoH4ghjNZYywgTU
