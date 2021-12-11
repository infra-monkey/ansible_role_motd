# Overview
This role configures a message of the day that is displayed at login.
The message is a "figlet" formatted line and the host-info facts set with `infra_monkey.ansible_general.host_info_facts`.

This role requires root permissions. It must be called as root. This needs to be managed at the ansible or playbook level.

# Variables

| Name  | Type | Required | Default Value | Description |
| ----- | ---- | -------- | ------------- | ----------- |
| banner_text | string | yes | n.a. | The text that will be displayed formatted by figlet |

# Example

     ___        __                 __  __             _              
    |_ _|_ __  / _|_ __ __ _      |  \/  | ___  _ __ | | _____ _   _ 
     | || '_ \| |_| '__/ _` |_____| |\/| |/ _ \| '_ \| |/ / _ \ | | |
     | || | | |  _| | | (_| |_____| |  | | (_) | | | |   <  __/ |_| |
    |___|_| |_|_| |_|  \__,_|     |_|  |_|\___/|_| |_|_|\_\___|\__, |
                                                               |___/ 
     ____                _            _   _             
    |  _ \ _ __ ___   __| |_   _  ___| |_(_) ___  _ __  
    | |_) | '__/ _ \ / _` | | | |/ __| __| |/ _ \| '_ \ 
    |  __/| | | (_) | (_| | |_| | (__| |_| | (_) | | | |
    |_|   |_|  \___/ \__,_|\__,_|\___|\__|_|\___/|_| |_|
                                                        

    [general]
    infrastucture=onpremise
    environment=testing
    hostgroup=database
    subgroup=postgresql
    role=standalone
    instance=v13

    Operating System : Debian GNU/Linux 10 (buster)


# Automatique Testing

This role is tested using Molecule against:
- Python 3.7, 3.8 and 3.9
- CentOS 7/8/9
- Debian 9/10/11
