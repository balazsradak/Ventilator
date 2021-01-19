# Enclosed build

## DISCLAIMER

**This is an incomplete, as yet untested design that is not yet intended to be used on patients.**

This page contains a running list of notes and planned updates that will be organized and added to as we get further into beta design and build.

## Concept

These components are intended to be assembled into a rugged sheet metal enclosure for the final mechanical design. The
compact version of the ventilator assembly and packaging strategy has already gone through several iterations,
including an Alpha Build device which proved out the use of a detachable internal structure for ease of assembly.

The next iteration of this build will demonstrate the packaging in the production housing, which has been designed but
not yet constructed. Based on lessons learned from the Alpha Build prototyping process, the ventilator will use a
detachable internal assembly, to which all pneumatic components can be mounted and connected. This allows for 360
degree accessibility to components during initial assembly. When complete, this internal assembly is bolted into the
enclosure, and the enclosure is screwed shut. The top-rear positioning of the removable enclosure lid provides
access to components that will need routine maintenance.

Further aspects of the production packaged design are detailed in the first section of the\
[Assembly Video](https://youtu.be/2hdV5CWcLb4).

| production ventilator assembly    |  back panel removed   |
|:---:|:---:|
| ![](images/enclosed_rendering_face.png) | ![](images/enclosed_rendering_open_back.png)  |



>*Consider Removing/replacing with newer renders*

## Design Assembly



>*Include GA/Sectional Here*

***
## Master Bill of Materials


| Part ID | Qty | Description | Part Type | Source |
| ------------- |:---------------: | ------------ | ------ | ----- |
| 01-00-000| 1 | Ventilator Assembly| Assembly | [Github](#enclosed-build)|
| 01-01-000| 1 | &nbsp;&nbsp;&nbsp;Enclosure | Fabrication | [Github](enclosure) |
| 01-02-000| 1 | &nbsp;&nbsp;&nbsp;Pneumatic Assembly | Assembly | [Github](pneumatics)|
| 01-03-000| 1 | &nbsp;&nbsp;&nbsp;Cooling Fan, 80x80x25, 12VDC, 37CFM, 2500RPM | Purchased | [AliBaba](https://m.alibaba.com/product/60795001398/80x80x25-12volt-low-noise-dc-axial.html?spm=a2700.galleryofferlist.0.0.742d3d15p4MDsQ&s=p&redirect=1)
| 01-04-000| 1 | &nbsp;&nbsp;&nbsp;Fan guard, 80mm | Purchased | [AliBaba](https://m.alibaba.com/product/62502588126/40mm-50mm-60mm-70mm-80mm-90mm.html?spm=a2700.themePage.offer--list.23.5b445d28m9FCoZ&redirect=1)
| 01-05-000| 4 | &nbsp;&nbsp;&nbsp;Rubber Bumpers, Threaded, M6 | Purchased| [McMaster](https://www.mcmaster.com/9541K82)|
| 01-05-000 | 4 | &nbsp;&nbsp;&nbsp;Phillips Pan-Head Screw, M4 x 0.7 x 6mm Lg., AISI 18-8 SS | Purchased| [McMaster](https://www.mcmaster.com/92000A216)|
|01-006-000| 4| &nbsp;&nbsp;&nbsp;PEM Self-Clinching Nut, Type CLS, M6 x 1.0, Min Sht Thk, 1.4 | Purchased | >*find new source*  |
|01-007-000| 12 | &nbsp;&nbsp;&nbsp;PEM Self-Clinching Nut, Type CLS, M4 x 0.7, Min Sht Thk, 1.4 | Purchased | >*find new source*  |






***


## India build

Preliminary enclosed build was produced by our partners, Foundry-M in Visakhapatnam, India.

|     |     |
|:---:|:---:|
|![](images/India_build_yellow.jpeg) | ![](images/India_build_open_back.jpeg)  |


## Beta Build Plan

Here is the CAD model for viewing: [autodesk360 link](https://a360.co/2PTyRzh)

Here is a page on the [metal enclosure assembly](enclosure).


### Blower

Note that the check valve should be included with any build where oxygen is used. The check valve is visible in blue in the image below.

![](images/blower_check_valve.png)

### Venturi Updates

We're planning to use 3/4"ID tubing throughout. The venturi will most likely be redesigned to have barbs that fit 3/4" ID tubing directly.

### Nucleo Module Updates

We're planning to move the STM32 onto the PCB, so there won't be a need to buy nucleo module.

### STM32 Updates

We're planning to add some kind of Flash memory to support non-volatile storage of configuration parameters. Part selection is still TBD; we'll either be moving to dual flash bank STM32 or add an i2c EEPROM (already planned for PCB Rev A).

### Stepper Drivers Updates

We're planning to move the steppers driver onto the PCB. Because of this, there will be no need to buy stepper drivers.

### RTC Battery

We're planning to add an RTC battery, which will allow controller to keep track of time while off - Pizza build no change, this feature not available for now
