Getting started

Setting up the dependency

The first step is to include Easy_ui into your project, for example, as a Gradle compile dependency:
1.Add configuration to pubspec.yaml file
~~~
 easy_ui:
    git:
      url: https://github.com/DickHoo/easy_ui.git
~~~

2.Before-and-after comparison
~~~
    const Text('The strongest flutter:',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18))
                
   Vs
  
   const Text("The strongest flutter:").setColor(Colors.black).setFontSize(18)
~~~

