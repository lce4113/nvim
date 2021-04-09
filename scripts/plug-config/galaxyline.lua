local gl = require('galaxyline')
local fileinfo = require('galaxyline.provider_fileinfo')
local vcs = require('galaxyline.provider_vcs')
local condition = require('galaxyline.condition')
local gls = gl.section

local colors = {
  -- bg = {
  --   '#FFFFFF',
  --   '#000000',
  --   '#C02040',
  --   '#000000',
  --   '#C02040',
  --   '#000000',
  --   '#C02040',
  -- },
  bg = {
    '#FFFFFF',
    '#000000',
    '#4060D0',
    '#6090E0',
    '#4060D0',
    '#2030C0',
    '#000060',
  },
  bgs = {
    '#4060D0',
    '#6090E0',
  },
  text = '#FFFFFF',
  diff_add = '#80C070',
  diff_modified = '#90B0F0',
  diff_remove = '#E08080',
  diag_error = '#F44747',
  diag_warn = '#FF8800',
  diag_info = '#FFCC66',
  diag_hint = '#4FC1FF',
}
gl.short_line_list = {'vista', 'dbui'}


-- LEFT

gls.left[1] = {
  FirstElementL1 = {
    provider = function() return ' ' end,
    condition = function()
      return vcs.diff_add() ~= nil or vcs.diff_modified() ~= nil or vcs.diff_remove() ~= nil
    end,
    highlight = {colors.bg[1], colors.bg[2]},
  }
}

gls.left[2] = {
  FirstElementL2 = {
    provider = function() return '' end,
    condition = function()
      return not (vcs.diff_add() ~= nil or vcs.diff_modified() ~= nil or vcs.diff_remove() ~= nil)
    end,
    highlight = {colors.bg[1], colors.bg[3]},
  }
}

gls.left[3] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = function()
      return vcs.diff_add() ~= nil or vcs.diff_modified() ~= nil or vcs.diff_remove() ~= nil
    end,
    icon = '  ',
    highlight = {colors.diff_add, colors.bg[2]},
  }
}

gls.left[4] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = function()
      return vcs.diff_add() ~= nil or vcs.diff_modified() ~= nil or vcs.diff_remove() ~= nil
    end,
    icon = ' 柳',
    highlight = {colors.diff_modified, colors.bg[2]},
  }
}

gls.left[5] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = function()
      return vcs.diff_add() ~= nil or vcs.diff_modified() ~= nil or vcs.diff_remove() ~= nil
    end,
    icon = '  ',
    highlight = {colors.diff_remove, colors.bg[2]},
    separator = '',
    separator_highlight = {colors.bg[2], colors.bg[3]},
  }
}

gls.left[6] = {
  SpaceL6 = {
    provider = function() return ' ' end,
    condition = function()
      return fileinfo.get_file_icon() ~= ' '
    end,
    highlight = {colors.text, colors.bg[3]},
  }
}

gls.left[7] = {
  FileIcon = {
    provider = 'FileIcon',
    condition = function() return fileinfo.get_file_icon() ~= ' ' end,
    icon = ' ',
    highlight = {colors.text, colors.bg[3]},
  }
}

gls.left[8] = {
  SpaceL8 = {
    provider = function() return ' ' end,
    condition = function()
      return fileinfo.get_file_icon() == ' '
    end,
    highlight = {colors.text, colors.bg[3]},
  }
}

gls.left[9] = {
  FileName = {
    provider = 'FileName',
    highlight = {colors.text, colors.bg[3]},
    separator = ' ',
    separator_highlight = {colors.bg[3], colors.bg[4]},
  }
}


-- RIGHT

gls.right[1] = {
  DiagnosticError = {
    icon = '  ',
    separator = '',
    separator_highlight = {colors.bg[5], colors.bg[4]},
    highlight = {colors.diag_error, colors.bg[5]},
    provider = 'DiagnosticError',
  }
}

gls.right[2] = {
  DiagnosticWarn = {
    icon = '  ',
    highlight = {colors.diag_warn, colors.bg[5]},
    provider = 'DiagnosticWarn',
  }
}

gls.right[3] = {
  DiagnosticHint = {
    icon = '  ',
    highlight = {colors.diag_hint, colors.bg[5]},
    provider = 'DiagnosticHint',
  }
}

gls.right[4] = {
  DiagnosticInfo = {
    icon = '  ',
    highlight = {colors.diag_info, colors.bg[5]},
    provider = 'DiagnosticInfo',
  }
}

gls.right[5] = {
  ShowLspClient = {
    icon = '  ',
    highlight = {colors.text, colors.bg[5]},
    provider = 'GetLspClient',
    condition = function()
      local tbl = {['dashboard'] = true, [' '] = true}
      if tbl[vim.bo.filetype] then return false end
      return true
    end,
  }
}

gls.right[6] = {
  LineInfo = {
    separator = ' ',
    separator_highlight = {colors.bg[6], colors.bg[5]},
    icon = '  ',
    highlight = {colors.text, colors.bg[6]},
    provider = 'LineColumn',
  }
}

gls.right[7] = {
  BufferType = {
    provider = 'FileTypeName',
    condition = condition.hide_in_width,
    separator = ' ',
    separator_highlight = {colors.bg[7], colors.bg[6]},
    icon = ' ',
    highlight = {colors.text, colors.bg[7]},
  }
}

gls.right[8] = {
  SpaceR8 = {
    provider = function() return ' ' end,
    highlight = {colors.text, colors.bg[7]},
  },
}


-- LEFT (Short Line)

gls.short_line_left[1] = {
  FirstElementSL = {
    provider = function() return ' ' end,
    highlight = {colors.text, colors.bgs[1]},
  }
}

gls.short_line_left[2] = {
  FileIconSL = {
    provider = 'FileIcon',
    condition = function() return fileinfo.get_file_icon() ~= ' ' end,
    highlight = {colors.text, colors.bgs[1]},
  }
}

gls.short_line_left[3] = {
  FileNameSL = {
    provider = 'FileName',
    highlight = {colors.text, colors.bgs[1]},
    separator = '',
    separator_highlight = {colors.bgs[1], colors.bgs[2]},
  }
}
