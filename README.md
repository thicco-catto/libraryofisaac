---
description: >-
  The Library of Isaac is a universal lua library, full of any tool you could
  ever think of needing for Isaac modding.
---

# Library of Isaac

The goal of this library is to provide Isaac mod developers with a complete toolbox that makes creating mods a far easier and faster experience than ever before.

* **Type Safety:** Despite lua not being inherently type safe itself, the library makes use of the [Sumneko's Lua Language Server](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) and the [Filloax's Binding of Isaac API autocomplete extension](https://marketplace.visualstudio.com/items?itemName=Filloax.isaac-lua-api-vscode) to add type annotations to all of the functions.
* **Lightweight:** The library has been built so if any non essential files are removed, everything will still work seamlessly. This allows developers to only keep the files they need to avoid unnecessary clutter in their mod. This is made better thanks to the [Visual Studio Code extension](https://marketplace.visualstudio.com/items?itemName=ThiccoCatto.library-of-isaac-extension), which automates this process for you.
* **Performace:** If multiple mods are using the same features of the library, only one instance of the library runs concurrently, preventing redundant code execution and optimizing performance.
