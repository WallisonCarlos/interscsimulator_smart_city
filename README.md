# InterSCSimulator #
This is the forked repository of InterSCSimulator, a large-scale smart city simulator. InterSCSimulator is based on Sim-Diasca, a general purpose simulator implemented in Erlang.


## Simulation scenario ##

The scenarios should be in the folder like the example scenario:

```
src/mock-simulators/smart_city_model/example/config.xml
```

Others:

https://github.com/ezambomsantana/interscsimulator_scenarios

With metro file:

https://github.com/ezambomsantana/interscsimulator_scenarios/tree/master/paraisopolis

Eduardo Zambom Santana InterSCSimulator Thesis:
 
https://www.teses.usp.br/teses/disponiveis/45/45134/tde-16072019-084815/publico/EduardoSantana_TeseRevisada.pdf
## Running InterSCSimulator with Docker ##
1. Repository download:
```
git clone https://github.com/WallisonCarlos/interscsimulator_smart_city.git
```

2. Go to project root directoryUnder :

```
cd interscsimulator_smart_city/
```

3. Build the docker image:

```
docker build -t interscsimulator .
```

4. Run simulation:
- CONFIG_PATH: your scenario configuration file directory
- USER: always root
- /src/mock-simulators/smart_city_model/output: is the output folder where your output is write
```
docker run -t -w /src/mock-simulators/smart_city_model/src -h yourhostname.com -v /your/local/respository:/src/mock-simulators/smart_city_model/output -e USER=root -e CONFIG_PATH=/src/mock-simulators/smart_city_model/your_scenario/config.xml interscsimulator
```