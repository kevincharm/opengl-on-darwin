# OpenGL on Darwin

Allows OpenGL 4.x projects to be compiled and run on Darwin hosts through a web browser.

## Requirements

- Docker (https://hub.docker.com/editions/community/docker-ce-desktop-mac)
- VirtualBox (`brew cask install virtualbox`)

## Running

- `make build` to build your project using the docker image.
- `make run` to run your project inside the docker image, then follow the instructions printed on stdout.

## Caveats

- Hardcoded paths will likely break. Your project is mounted at `/home/user/work`, so make sure to update those.

Brought to you by the [owo gang](https://sendcroissants.me)

```
                                *(#(###(/////*//(/(##(((#**
                             .(##(#######(*//**/*///#####((//**
                           */(########((#(#*(**,****/#####(/**///(/*
                          /((###%###(####(///(//**,***((#((#/**(/*(###(
                         ,/((((/(####(#(((###//(///,*/*((((((*/*//((((((/*
                        //((((////(/#%#*//(//#//(*/(,**/(///(/**/**(/////*
                   ,//(##((((/((/**/*/%#((/*/((//(***,,*/(#(((*/,*,/*/***/
                .((######(##((/(((((//*/%#(#((((/(/*/*,,/((/((**,*,*/***/
               /(#%%%###(##(#*(*///.(/**/%%%/((#(((//*,*,(((((*,,*,**,(.
               (///////#(/#(##(//*(//////*##%%%%##((//**//((((*,.(#(,
             .**//*/##(/*/(#(#((/***/(**(//##%%%###///*,*//(/*,,(*
             (###(##(/*/#**,(#(((*/(/(/////((#%%%%/#/*,,**//*,./
           ./(#((((((((/*((***#(#(((////(/(((#(###/(/,,*,*,,,(*
         ,*(##((((*/**/((((/#/*((((##((/(((/((#(%///*,,,,(%#*
        /(((###//,**/((/((((#/(*/(((((((((((((#(((//,.(#(*
       ,////(((((//*/(((//////((//*#(*/(/*(///(/(//(((.
       */***/****//(/**////*****//**(////*/*((/####/,
      .*///,.,*,,,*,***,**,,,*/,,,,,//(###%/,. .,.
       ***/,,,..,,,,,,,,,##((**////***,.
       /##(##*,,(((((((/,
```
