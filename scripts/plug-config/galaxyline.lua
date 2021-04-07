local gl = require('galaxyline')
local gls = gl.section
-- get my theme in galaxyline repo
-- local colors = require('galaxyline.theme').default
local colors = {
  bg = '#d04050',
  text = '#FFFFFF',
  green = '#608B4E',
  blue = '#569CD6',
  red = '#D16969',
  error_red = '#F44747',
  orange = '#FF8800',
  info_yellow = '#FFCC66',
  vivid_blue = '#4FC1FF',
}
local condition = require('galaxyline.condition')
gl.short_line_list = {'NvimTree', 'vista', 'dbui', 'packer'}

gls.left[1] = {
  GitIcon = {
    provider = function()
      return '  '
    end,
    condition = condition.check_git_workspace,
    separator = ' ',
    separator_highlight = {'NONE', colors.bg},
    highlight = {colors.text, colors.bg}
  }
}

gls.left[2] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = condition.check_git_workspace,
    separator = ' ',
    separator_highlight = {'NONE', colors.bg},
    highlight = {colors.text, colors.bg}
  }
}

gls.left[3] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = condition.hide_in_width,
    icon = '  ',
    highlight = {colors.green, colors.bg}
  }
}
gls.left[4] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = condition.hide_in_width,
    icon = ' 柳',
    highlight = {colors.blue, colors.bg}
  }
}
gls.left[5] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = condition.hide_in_width,
    icon = '  ',
    highlight = {colors.red, colors.bg}
  }
}

gls.right[1] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = {colors.error_red, colors.bg}
  }
}
gls.right[2] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    highlight = {colors.orange, colors.bg}
  }
}

gls.right[3] = {
  DiagnosticHint = {
    provider = 'DiagnosticHint',
    icon = '  ',
    highlight = {colors.vivid_blue, colors.bg}
  }
}

gls.right[4] = {
  DiagnosticInfo = {
    provider = 'DiagnosticInfo',
    icon = '  ',
    highlight = {colors.info_yellow, colors.bg}
  }
}

gls.right[5] = {
  ShowLspClient = {
    provider = 'GetLspClient',
    condition = function()
      local tbl = {['dashboard'] = true, [' '] = true}
      if tbl[vim.bo.filetype] then return false end
      return true
    end,
    icon = ' ',
    highlight = {colors.text, colors.bg}
  }
}

gls.right[6] = {
  LineInfo = {
    provider = 'LineColumn',
    separator = '  ',
    separator_highlight = {'NONE', colors.bg},
    highlight = {colors.text, colors.bg}
  }
}

gls.right[7] = {
  PerCent = {
    provider = 'LinePercent',
    separator = ' ',
    separator_highlight = {'NONE', colors.bg},
    highlight = {colors.text, colors.bg}
  }
}

gls.right[8] = {
  BufferType = {
    provider = 'FileTypeName',
    condition = condition.hide_in_width,
    separator = ' ',
    separator_highlight = {'NONE', colors.bg},
    highlight = {colors.text, colors.bg}
  }
}

gls.right[9] = {
  Space = {
    provider = function()
      return ' '
    end,
    separator = ' ',
    separator_highlight = {'NONE', colors.bg},
    highlight = {colors.orange, colors.bg}
  }
}

gls.short_line_left[1] = {
  BufferType = {
    provider = 'FileTypeName',
    separator = ' ',
    separator_highlight = {'NONE', colors.bg},
    highlight = {colors.text, colors.bg}
  }
}

gls.short_line_left[2] = {
  SFileName = {
    provider = 'SFileName',
    condition = condition.buffer_not_empty,
    highlight = {colors.text, colors.bg}
  }
}

gls.short_line_right[1] = {
  BufferIcon = {
    provider = 'BufferIcon',
    highlight = {colors.text, colors.bg}
  }
}
