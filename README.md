## Loader Furnaces
Loader Furnaces are Furnaces that take a lot of power but will be able to keep up with Loaders from [LoaderRedux](https://github.com/Yousei9/Loader-Redux)  

Loader Furnaces are not cheap as they require a lot of power and will require **more** electric furnaces as if you built a full smelter setup.  
At the start of the game, the mod will try to discover all smelting recipes which only have a single item output and add a belt optimized Loader-furnace version of it.

![image](https://shuvi.is-a-good-waifu.com/af9987.jpg)

## Bugs
It might be that some smelting recipes won't show up due to how Factorio handles the mod loading, if a mod is loaded after Loader-Furnaces the recipes will not be discovered.  

The second issue is with given the formula `2 / output_count < 1`. This mod forces the output_count to `2`. This has todo with the fact that only one item can be smelted per tick and since the game is running at 60ticks/s it would mean if more than 60 items were to be inserted per second the furnace would not be able to keep up, which is the case with [bob's Logistics](https://mods.factorio.com/mod/boblogistics) last Tier belts.  
The issue is because we set the output to `2` we need to scale the ingredients accordingly but imagining a case where the normal recipe is `1` item in `3` items out. it would force the output to be `2` and scale the input to `1` as the input_count can't be less than `1`.  
If somone has a better suggestions feel free to get back to me.

# Credits
Loader Furnaces is a port of [Loader Furnace](https://mods.factorio.com/mods/darkfrei/Loader-Furnace) by darkfrei
