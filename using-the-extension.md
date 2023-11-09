# Using the Extension

Using the Visual Studio Code extension is the easiest and most efficient way of using the library, this page shows how to set it up.

### Install Visual Studio Code

If you haven't already, you first need to install VSCode. It's a lightweight code editor that allows for amazing customization and the installation of plugins/extensions to improve your coding experience.

To get it simply visit [their website](https://code.visualstudio.com/) and click on one of the two big download buttons. After you download the installer, execute it and follow the instructions.

### Install the necessary extensions

To make the most use of the library, and to make coding Isaac mods, you first need to install two extensions related to lua and Isaac.

You can get the extensions here:

* [Lua server extension](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) (by Sumneko)
* [Isaac API autocomplete](https://marketplace.visualstudio.com/items?itemName=Filloax.isaac-lua-api-vscode) (by Filloax)
* [Library Of Isaac Extension](https://marketplace.visualstudio.com/items?itemName=ThiccoCatto.library-of-isaac-extension) (by us!)

Alternatively you can install these manually from VSCode by following the next steps:

First, you'll need to go to the extension tab.

<figure><img src=".gitbook/assets/Screenshot_1.png" alt="" width="140"><figcaption></figcaption></figure>

Then in the search bar, look up `lua`. Install the extension made by `sumneko` (It'll probably be the first result). Click on it and then click the `install` button.

<figure><img src=".gitbook/assets/Screenshot_2.png" alt="" width="563"><figcaption></figcaption></figure>

Once you download it, search for `Isacc API` and install the extension made by `Filloax`.

<figure><img src=".gitbook/assets/Screenshot_3.png" alt="" width="563"><figcaption></figcaption></figure>

And finally, search for `Library Of Isaac` and install the extension made by `Thicco Catto`

{% hint style="warning" %}
Install the extension called `Library Of Isaac Extension,` NOT `Library Of Isaac Dev Extension`
{% endhint %}

<figure><img src=".gitbook/assets/image (3).png" alt="" width="563"><figcaption></figcaption></figure>

### Using the extension

The extension provides 2 commands `Init Library of Isaac Project` and `Build Library of Isaac Project`.

{% hint style="info" %}
To use commands in VSCode, press `ctrl+shift+p`
{% endhint %}

#### Init Library of Isaac Project

This command configures your workspace for lua autocompletion, enabling the recognition of all library functions. The extension will also automatically ask you to initialize it if it detects the library being in your workspace.

If you already have the complete library downloaded or as a submodule in your project, the extension will use the corresponding autocomplete for that specific version. In cases where you don't have the complete library, the extension provides a built-in default version for autocompletion.

#### Build Library of Isaac Project

This command scans your project's lua files, identifying the specific library functionalities you're utilizing, and automatically trims any unnecessary library files to optimize performance and reduce bloat.

If you have the complete library downloaded or as a submodule in your project, the extension will create a new folder called `release-mod` and place your mod files alongside the reduced library version to avoid conflicts.

Otherwise, it will replace your current library in the mod with the reduced version, extracting the file from the built-in default version.
