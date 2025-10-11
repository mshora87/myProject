#create dockerfile example for CMD VS ENTRYPOINT
FROM ubuntu:latest
CMD ["echo", "This is a CMD instruction"]
ENTRYPOINT ["echo", "This is an ENTRYPOINT instruction"]
#when you run this docker image without any command, it will execute the ENTRYPOINT instruction
#when you run this docker image with a command, it will override the CMD instruction but not the ENTRYPOINT instruction
#for example, if you run the image with "docker run <image_name> Hello World", it will output:
#This is an ENTRYPOINT instruction Hello World     
#but if you run the image with "docker run <image_name>", it will output:
#This is an ENTRYPOINT instruction     
#to build the image, use the command: docker build -t cmd_entrypoint_example .
#to run the image, use the command: docker run cmd_entrypoint_example
#to run the image with a command, use the command: docker run cmd_entrypoint_example Hello World 
#to see the difference between CMD and ENTRYPOINT, you can also try to comment out the ENTRYPOINT instruction and see the output
