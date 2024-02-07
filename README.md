# project.nvim

A minimalistic nvim plugin that allows to source additional configuration
automatically from `project-dir/.config/config.lua`.

```lua
    -- usage with lazy
    {
        "joergmis/project-config.nvim",
        config = function()
            require('project-config').setup()
        end
    },
```
