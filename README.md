docker-yoink
============

Dockerfile for yoink: https://github.com/phracker/yoink

Run it like: docker run -d -h myhost --name="yoink" -v path/to/config:/root -v path/to/watch/dir:/blackhole noinip/docker-yoink

After running you will have yoink installed and setup to run once an hour but you still need to edit the .yoinkrc file to put in your settings. Options are as follows (via yoink.py -help)

Yoink settings are stored in ~/.yoinkrc. Accepted paramaters are:  
   user:                  [your what.cd username]  
   password:              [your what.cd password]  
   target:                [your torrent client watch dir]  
   max_age:               [the maximum age of a torrent in days that  
                          yoink will download].  
                          If left blank, will not check age of torrent.  
   max_storage_in_mb:     [the maximum size in megabytes of your storage dir]  
                          If the size of your storage folder exceeds the  
                          specified size, yoink will stop downloading  
                          new torrents.  
                          Intended for seedboxes with limited storage quotas.  
                          If left blank, will not check size of storage dir.  
   storage_dir:           [your torrent data dir]  
                          If left blank, defaults to home directory.  
   track_by_index_number: [TRUE or FALSE]  
                          if true, will write all downloaded torrent IDs to  
                          ~/.yoink.db and use this as the primary mechanism  
                          for checking if a given torrent has already  
                          been yoinked.  
