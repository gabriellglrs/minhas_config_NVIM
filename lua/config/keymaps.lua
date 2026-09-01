local map = vim.keymap.set

map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find Files" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Help" })
map("n", "<leader>wd", "<cmd>bdelete<CR>", { desc = "Close Buffer" })
map("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear Search" })

map("n", "<C-h>", "<C-w>h", { desc = "Left Window" })
map("n", "<C-j>", "<C-w>j", { desc = "Down Window" })
map("n", "<C-k>", "<C-w>k", { desc = "Up Window" })
map("n", "<C-l>", "<C-w>l", { desc = "Right Window" })

map("v", "<", "<gv", { desc = "Indent Left" })
map("v", ">", ">gv", { desc = "Indent Right" })

map("n", "<S-Up>", ":m -2<CR>", { desc = "Move Line Up" })
map("n", "<S-Down>", ":m +1<CR>", { desc = "Move Line Down" })
map("v", "<S-Up>", ":m '<-2<CR>gv=gv", { desc = "Move Selection Up" })
map("v", "<S-Down>", ":m '>+1<CR>gv=gv", { desc = "Move Selection Down" })

map("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>", { desc = "Diagnostics" })
map("n", "<leader>xd", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", { desc = "Document Diagnostics" })
map("n", "<leader>xw", "<cmd>Trouble diagnostics toggle<CR>", { desc = "Workspace Diagnostics" })
map("n", "<leader>cs", "<cmd>Trouble symbols toggle focus=false<CR>", { desc = "Symbols Outline" })
map("n", "gR", "<cmd>Trouble lsp toggle focus=false win.position=right<CR>", { desc = "LSP References" })

map("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { desc = "Find TODOs" })

map("n", "-", "<cmd>lua require('nvim-tree.api').node.open.vertical()<CR>", { desc = "Open Vertical Split" })

map("n", "<C-s>", "<cmd>w<CR>", { desc = "Save" })
map("i", "<C-s>", "<ESC><cmd>w<CR>", { desc = "Save" })
map("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })
map("n", "<leader>Q", "<cmd>qa!<CR>", { desc = "Force Quit All" })

map("n", "<C-d>", "<C-d>zz", { desc = "Half Page Down Centered" })
map("n", "<C-u>", "<C-u>zz", { desc = "Half Page Up Centered" })
map("n", "n", "nzzzv", { desc = "Next Search Result Centered" })
map("n", "N", "Nzzzv", { desc = "Prev Search Result Centered" })

map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Line Down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Line Up" })
map("v", "p", '"_dP', { desc = "Paste Without Yank" })

map("n", "<leader>sv", "<cmd>vsplit<CR>", { desc = "Split Vertical" })
map("n", "<leader>sh", "<cmd>split<CR>", { desc = "Split Horizontal" })

map("n", "<A-j>", "<cmd>cnext<CR>zz", { desc = "Next Quickfix" })
map("n", "<A-k>", "<cmd>cprev<CR>zz", { desc = "Prev Quickfix" })

map("n", "<leader>bD", "<cmd>%bdelete<CR>", { desc = "Delete All Buffers" })
map("n", "<leader>bl", "<cmd>e #<CR>", { desc = "Last Buffer" })

map("n", "<leader>fc", "<cmd>Telescope colorscheme<CR>", { desc = "Colorscheme" })
map("n", "<leader>fk", "<cmd>Telescope keymaps<CR>", { desc = "Keymaps" })
map("n", "<leader>fm", "<cmd>Telescope marks<CR>", { desc = "Marks" })

map("n", "<A-t>", "<cmd>ToggleTerm<CR>", { desc = "Terminal" })
map("t", "<A-t>", "<cmd>ToggleTerm<CR>", { desc = "Terminal" })

-- Mouse IDE: RightClick menu, Ctrl+Click goto def, MiddleClick close buffer
map("n", "<C-LeftMouse>", "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = "Go to Definition (Ctrl+Click)" })
map("n", "<C-RightMouse>", "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = "Go to Definition" })
map("v", "<RightMouse>", "<cmd>lua vim.lsp.buf.code_action()<CR>", { desc = "Code Action" })
-- MiddleClick: close buffer (like VS Code)
map("n", "<MiddleMouse>", "<cmd>bdelete<CR>", { desc = "Close Buffer (Middle Click)" })
-- Click on line number to toggle breakpoint
map("n", "<2-LeftMouse>", "<LeftMouse>", { desc = "Double Click Select" })
map("n", "<LeftMouse>", "<LeftMouse>", { desc = "Mouse Click" })

map("n", "<leader>cf", "<cmd>lua require('conform').format({ async = true })<CR>", { desc = "Format File" })

map("n", "<leader>dB", function() require("dap").toggle_breakpoint() end, { desc = "Toggle Breakpoint" })
map("n", "<leader>dc", function() require("dap").continue() end, { desc = "Continue" })
map("n", "<leader>di", function() require("dap").step_into() end, { desc = "Step Into" })
map("n", "<leader>do", function() require("dap").step_over() end, { desc = "Step Over" })
map("n", "<leader>dO", function() require("dap").step_out() end, { desc = "Step Out" })
map("n", "<leader>dr", function() require("dap").repl.toggle() end, { desc = "Toggle REPL" })
map("n", "<leader>dl", function() require("dap").run_last() end, { desc = "Run Last" })
map("n", "<leader>du", function() require("dapui").toggle() end, { desc = "Toggle DAP UI" })
map("n", "<leader>dx", function() require("dap").terminate() end, { desc = "Terminate" })

map("n", "<leader>tn", function() require("neotest").run.run() end, { desc = "Run Nearest Test" })
map("n", "<leader>tf", function() require("neotest").run.run(vim.fn.expand("%")) end, { desc = "Run File Tests" })
map("n", "<leader>ta", function() require("neotest").run.run({ suite = true }) end, { desc = "Run All Tests" })
map("n", "<leader>ts", function() require("neotest").summary.toggle() end, { desc = "Toggle Summary" })
map("n", "<leader>to", function() require("neotest").output_panel.toggle() end, { desc = "Toggle Output Panel" })
map("n", "<leader>tl", function() require("neotest").run.run_last() end, { desc = "Run Last Test" })
map("n", "<leader>td", function() require("neotest").run.run({ strategy = "dap" }) end, { desc = "Debug Nearest Test" })

map("n", "<leader>hw", "<cmd>HopWord<CR>", { desc = "Hop Word" })
map("n", "<leader>hl", "<cmd>HopLineStart<CR>", { desc = "Hop Line" })
map("n", "<leader>hp", "<cmd>HopPattern<CR>", { desc = "Hop Pattern" })

-- IDE Right Click Popup Menu (VS Code style)
vim.cmd([[
  anoremenu PopUp.Go\ to\ Definition <Cmd>lua vim.lsp.buf.definition()<CR>
  anoremenu PopUp.References <Cmd>lua vim.lsp.buf.references()<CR>
  anoremenu PopUp.Hover <Cmd>lua vim.lsp.buf.hover()<CR>
  anoremenu PopUp.-Sep1- :
  anoremenu PopUp.Code\ Action <Cmd>lua vim.lsp.buf.code_action()<CR>
  anoremenu PopUp.Rename <Cmd>lua vim.lsp.buf.rename()<CR>
  anoremenu PopUp.Format <Cmd>lua require('conform').format({ async = true })<CR>
  anoremenu PopUp.-Sep2- :
  anoremenu PopUp.Cut "+x
  anoremenu PopUp.Copy "+y
  anoremenu PopUp.Paste "+p
  anoremenu PopUp.-Sep3- :
  anoremenu PopUp.Toggle\ Breakpoint <Cmd>lua require('dap').toggle_breakpoint()<CR>
  anoremenu PopUp.Close\ Buffer <Cmd>bdelete<CR>
]])
-- Mouse: scroll zoom with Ctrl+Scroll (like VS Code)
map("n", "<C-ScrollWheelUp>", "<cmd>let &guifont = &guifont<CR>", { desc = "Zoom In" })
map("n", "<C-ScrollWheelDown>", "<cmd>let &guifont = &guifont<CR>", { desc = "Zoom Out" })
