#Run R script:
#cmd.script:
#  - source: salt://r_installation.sh
#  - user: root


/usr/local/src/upgrade.R:
  file.managed:
    - source: salt://upgrade.R
    - user: root
    - group: root
    - mode: 644

compile_and_install:
  cmd.script:
    - require:
      - file: /usr/local/src/upgrade.R 
    - source: salt://r_installation.sh
    - user: root

Run tsdb script:
 cmd.script:
  - source: salt://tsdb.sh
  - user: root
      
