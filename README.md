# Marketing Factory Variant listener sample

This project contains an example module to run along for Marketing Factory.

When a variant is resolved and displayed Marketing Factory is sending a custom JavaScript event that contains the displayed variant infos.

This module provide a simple component that listen on this events, and display directly the variant info in the HTML page.

## Minimal requirements

* DX 7.2.3.2
* Marketing Factory 1.9.x

## Build and deploy

Simply use the following command to build the project and deploy to Jahia

```
mvn clean install jahia:deploy
```

## Installation
Download the jar and deploy it on your instance then activate the module on the site you wish to use it.

## Usage

* Activate the module on your web site
* Add the component `Variant Listener Sample` in your web page (this component is available in `Marketing factory components` section)
* If your page contains some Personalisations or Optimization tests the component previously added will display all the event details related to the variants displayed

## Details

* The JavaScript event is named `displayWemVariant`
* Example of variant info contained in the event and displayed by the `Variant Listener Sample` component:
``` 
{
    "id": "a448b37e-c753-4e4a-8a7d-575f39dcc5d5",
    "name": "digitall-is-established-to-serve",
    "displayableName": "Digitall Is Established To Serve Global Technology Innovators",
    "path": "/sites/digitall/home/about/history/area-main/timeline/experience-digitall-is-establish/digitall-is-established-to-serve",
    "type": "personalization",
    "wrapper": {
        "id": "62314a09-4292-45f7-b18b-2219319c35ce",
        "name": "experience-digitall-is-establish",
        "displayableName": "Personalization - Digitall Is Established To Serve Global Technology Innovators",
        "path": "/sites/digitall/home/about/history/area-main/timeline/experience-digitall-is-establish"
    }
}
```

## Found a bug?

Please feel free to [create an issue](https://support.jahia.com/) if you find anything wrong with this component.
