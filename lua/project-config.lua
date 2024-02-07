local config_paths = { ".config/config.lua" }

local function search_for_config()
    local project_config = ""

    for _, p in ipairs(config_paths) do
        local f = io.open(p)
        if f ~= nil then
            f:close()
            project_config = p
            break
        end
    end

    if project_config == "" then
        return
    end

    vim.notify("[project-config] Found configuration at." .. project_config, vim.log.levels.INFO, nil)
    vim.cmd(":source" .. project_config)
end

local function setup()
    vim.api.nvim_create_autocmd({ "VimEnter" }, {
        pattern = { "*" },
        callback = search_for_config
    })
end

return { setup = setup }
