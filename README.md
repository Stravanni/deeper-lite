# DeepER-Lite
Entity Resolution in databases

## Running

First install [Docker](https://www.docker.com/), then:

    docker run -it -v /path/to/datasets/root/directory:/root/data daqcri/deeper-lite <Dataset> <first-table> <second-table> <perfect-mappings-file>

Examples:
Example 1: mount your data, here at /home/me/Code/DeepER-Lite/data

    docker run -it -v /home/me/Code/DeepER-Lite/data:/root/data deeper-lite fodors-zagats fodors.csv zagats.csv fodors-zagats_perfectMapping.csv

Example 2: use the samples included with the build

    docker run -it deeper-lite fodors-zagats fodors.csv zagats.csv fodors-zagats_perfectMapping.csv

## Development

Get the source:

    git clone --recursive git@github.com:daqcri/deeper-lite.git
    
Edit source files then build a new image:

    docker build .

Then run:

    docker run -it -v /data/dir:/data <image-id> <Dataset> ... # same like above

