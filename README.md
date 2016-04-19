# cucumber-parallel-scenarios
Run cucumber scenarios and scenario outlines in parallel

At the moment this is just a couple of rough scripts that split the example.feature
into 6 separate runs and then runs each separately. The result of each test is output
as json into specs/features, the name of the json file will include the line number of the
scenario or outline example.

To use:

  At the moment it can't really be used without being a bit hacky, but hopefully
  going through the code will let you see what the concept is.

  If you want to see it in action against example.feature, run the following from
  the specs folder

  ```
    ./../lib/runner.rb features/example.feature 
  ```
TODO

  - Run each test in parallel
  - Collate reports (json and html)
  - make the script invocable from the command line against any feature relative to
  the current directory
  - parse a directory of feature files, not just a single feature file
  - output cucumber 'pretty' output to the command line
