return {
  'theHamsta/crazy-node-movement',
  config = function()
    require('nvim-treesitter.configs').setup({
      node_movement = {
        enable = true,
        keymaps = {
          move_up = "<a-h>",
          move_down = "<a-l>",
          move_left = "<a-k>",
          move_right = "<a-j>",
          swap_left = "<s-a-h>", -- will only swap when one of "swappable_textobjects" is selected
          swap_right = "<s-a-l>",
          select_current_node = "<leader><Cr>",
        },
        swappable_textobjects = { '@function.outer', '@parameter.inner', '@statement.outer' },
        allow_switch_parents = true, -- more craziness by switching parents while staying on the same level, false prevents you from accidentally jumping out of a function
        allow_next_parent = true,    -- more craziness by going up one level if next node does not have children
      }
    })
  end
}
