--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local result = {};
	_G.Cs = {UQSDDAA=3,YASDMRXA=1,YASa0AVV=2};
	for i = 1, #LUAOBFUSACTOR_STR do
		obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + #Cs + 1)), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return obf_tableconcat(result);
end
bit32 = {};
local N = 32;
local P = 2 ^ N;
bit32.bnot = function(x)
	x = x % P;
	return (P - 1) - x;
end;
bit32.band = function(x, y)
	if (y == 255) then
		return x % 256;
	end
	if (y == 65535) then
		return x % 65536;
	end
	if (y == 4294967295) then
		return x % 4294967296;
	end
	x, y = x % P, y % P;
	local r = 0;
	local p = 1;
	for i = 1, N do
		local a, b = x % 2, y % 2;
		x, y = math.floor(x / 2), math.floor(y / 2);
		if ((a + b) == 2) then
			r = r + p;
		end
		p = 2 * p;
	end
	return r;
end;
bit32.bor = function(x, y)
	if (y == 255) then
		return (x - (x % 256)) + 255;
	end
	if (y == 65535) then
		return (x - (x % 65536)) + 65535;
	end
	if (y == 4294967295) then
		return 4294967295;
	end
	x, y = x % P, y % P;
	local r = 0;
	local p = 1;
	for i = 1, N do
		local a, b = x % 2, y % 2;
		x, y = math.floor(x / 2), math.floor(y / 2);
		if ((a + b) >= 1) then
			r = r + p;
		end
		p = 2 * p;
	end
	return r;
end;
bit32.bxor = function(x, y)
	x, y = x % P, y % P;
	local r = 0;
	local p = 1;
	for i = 1, N do
		local a, b = x % 2, y % 2;
		x, y = math.floor(x / 2), math.floor(y / 2);
		if ((a + b) == 1) then
			r = r + p;
		end
		p = 2 * p;
	end
	return r;
end;
bit32.lshift = function(x, s_amount)
	if (math.abs(s_amount) >= N) then
		return 0;
	end
	x = x % P;
	if (s_amount < 0) then
		return math.floor(x * (2 ^ s_amount));
	else
		return (x * (2 ^ s_amount)) % P;
	end
end;
bit32.rshift = function(x, s_amount)
	if (math.abs(s_amount) >= N) then
		return 0;
	end
	x = x % P;
	if (s_amount > 0) then
		return math.floor(x * (2 ^ -s_amount));
	else
		return (x * (2 ^ -s_amount)) % P;
	end
end;
bit32.arshift = function(x, s_amount)
	if (math.abs(s_amount) >= N) then
		return 0;
	end
	x = x % P;
	if (s_amount > 0) then
		local add = 0;
		if (x >= (P / 2)) then
			add = P - (2 ^ (N - s_amount));
		end
		return math.floor(x * (2 ^ -s_amount)) + add;
	else
		return (x * (2 ^ -s_amount)) % P;
	end
end;
local gui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\226\192\201\32\227\181\224\11\216", "\126\177\163\187\69\134\219\167"), game.CoreGui);
gui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\16\206\34\196\230\2\222\41\204\245\4\216\35", "\156\67\173\74\165");
local ascii = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\0\178\81\2\144\39\68\49\187", "\38\84\215\41\118\220\70"), gui);
ascii.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\113\5\33\27\247\113\4\54", "\158\48\118\66\114");
ascii.Text = [[
   ▄█  ███▄▄▄▄      ▄████████  ▄█  ███▄▄▄▄       ███        ▄████████ 
  ███  ███▀▀▀██▄   ███    ███ ███  ███▀▀▀██▄ ▀█████████▄   ███    ███ 
  ███▌ ███   ███   ███    █▀  ███▌ ███   ███    ▀███▀▀██   ███    █▀  
  ███▌ ███   ███  ▄███▄▄▄     ███▌ ███   ███     ███   ▀  ▄███▄▄▄     
  ███▌ ███   ███ ▀▀███▀▀▀     ███▌ ███   ███     ███     ▀▀███▀▀▀     
  ███  ███   ███   ███        ███  ███   ███     ███       ███    █▄  
  ███  ███   ███   ███        ███  ███   ███     ███       ███    ███ 
  █▀    ▀█   █▀    ███        █▀    ▀█   █▀     ▄████▀     ██████████ 
]];
ascii.Size = UDim2.new(0, 500, 0, 170);
ascii.Position = UDim2.new(0.02, 0, 0.86, 0);
ascii.BackgroundTransparency = 1;
ascii.TextColor3 = Color3.new(1, 1, 1);
ascii.Font = Enum.Font.Code;
ascii.TextSize = 14;
ascii.TextXAlignment = Enum.TextXAlignment.Left;
ascii.TextYAlignment = Enum.TextYAlignment.Top;
local gradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\158\13\55\36\114\161\242\174\42\4", "\155\203\68\112\86\19\197"), ascii);
gradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 255, 0)),ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 255))});
local Players = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\118\209\55\229\69\106\246", "\152\38\189\86\156\32\24\133"));
local StarterGui = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\207\67\166\84\232\82\181\97\233\94", "\38\156\55\199"));
local function sendNotification(title, text, duration, icon)
	duration = tonumber(duration) or 5;
	pcall(function()
		StarterGui:SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\155\120\114\44\61\123\238\74\174\116\127\41\7\125\245\77", "\35\200\29\28\72\115\20\154"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\45\182\197\211\136", "\84\121\223\177\191\237\76")]=(title or LUAOBFUSACTOR_DECRYPT_STR_0("\146\120\239\137\20\121\4\228\246\7\144", "\161\219\54\169\192\90\48\80")),[LUAOBFUSACTOR_DECRYPT_STR_0("\125\71\24\49", "\69\41\34\96")]=(text or LUAOBFUSACTOR_DECRYPT_STR_0("\152\198\193\15\14\36\172\198\211\74\52\101\236\149", "\75\220\163\183\106\98")),[LUAOBFUSACTOR_DECRYPT_STR_0("\38\175\153\54\205\11\181\133", "\185\98\218\235\87")]=duration,[LUAOBFUSACTOR_DECRYPT_STR_0("\226\63\40\232", "\202\171\92\71\134\190")]=(icon or LUAOBFUSACTOR_DECRYPT_STR_0("\59\195\52\137\58\210\41\156\32\197\118\199\102\152\120\219\124\151\117\219\121\144\126\221\127\144\126", "\232\73\161\76"))});
	end);
end
sendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\146\247\100\116\48\146\237\103\16\79\226", "\126\219\185\34\61"), LUAOBFUSACTOR_DECRYPT_STR_0("\40\203\72\119\114\120\227\226\8\142\104\60\46\33", "\135\108\174\62\18\30\23\147"), 5, LUAOBFUSACTOR_DECRYPT_STR_0("\164\235\50\202\11\189\54\211\191\237\112\132\87\255\96\145\228\188\122\157\64\247\107\159\224\189\126\156", "\167\214\137\74\171\120\206\83"));
local gui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\184\243\32\88\253\169\172\229\59", "\199\235\144\82\61\152"), game.CoreGui);
gui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\52\21\177\42\29\55\170\40\14\31\158\62\14", "\75\103\118\217");
local ascii = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\243\81\104\0\149\31\197\81\124", "\126\167\52\16\116\217"), gui);
ascii.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\233\61\35\137\189\56\238\220", "\156\168\78\64\224\212\121");
ascii.Text = [[
   ▄█  ███▄▄▄▄      ▄████████  ▄█  ███▄▄▄▄       ███        ▄████████ 
  ███  ███▀▀▀██▄   ███    ███ ███  ███▀▀▀██▄ ▀█████████▄   ███    ███ 
  ███▌ ███   ███   ███    █▀  ███▌ ███   ███    ▀███▀▀██   ███    █▀  
  ███▌ ███   ███  ▄███▄▄▄     ███▌ ███   ███     ███   ▀  ▄███▄▄▄     
  ███▌ ███   ███ ▀▀███▀▀▀     ███▌ ███   ███     ███     ▀▀███▀▀▀     
  ███  ███   ███   ███        ███  ███   ███     ███       ███    █▄  
  ███  ███   ███   ███        ███  ███   ███     ███       ███    ███ 
  █▀    ▀█   █▀    ███        █▀    ▀█   █▀     ▄████▀     ██████████ 
]];
ascii.Size = UDim2.new(0, 500, 0, 170);
ascii.Position = UDim2.new(0.02, 0, 0.86, 0);
ascii.BackgroundTransparency = 1;
ascii.TextColor3 = Color3.new(1, 1, 1);
ascii.Font = Enum.Font.Code;
ascii.TextSize = 14;
ascii.TextXAlignment = Enum.TextXAlignment.Left;
ascii.TextYAlignment = Enum.TextYAlignment.Top;
local gradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\50\199\130\220\6\234\172\203\9\250", "\174\103\142\197"), ascii);
gradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 255, 0)),ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 255))});
local Players = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\102\36\94\33\32\76\235", "\152\54\72\63\88\69\62"));
local StarterGui = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\231\208\239\78\192\193\252\123\193\205", "\60\180\164\142"));
local function sendNotification(title, text, duration, icon)
	duration = tonumber(duration) or 5;
	pcall(function()
		StarterGui:SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\107\91\11\45\9\226\6\81\88\12\42\38\249\27\87\80", "\114\56\62\101\73\71\141"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\140\224\207\200\189", "\164\216\137\187")]=(title or LUAOBFUSACTOR_DECRYPT_STR_0("\251\200\23\155\136\215\63\247\171\96\235", "\107\178\134\81\210\198\158")),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\11\154\210", "\202\88\110\226\166")]=(text or LUAOBFUSACTOR_DECRYPT_STR_0("\231\10\148\242\198\204\31\135\243\138\245\65\210\161", "\170\163\111\226\151")),[LUAOBFUSACTOR_DECRYPT_STR_0("\53\37\160\57\90\62\38\31", "\73\113\80\210\88\46\87")]=duration,[LUAOBFUSACTOR_DECRYPT_STR_0("\168\47\194\28", "\135\225\76\173\114")]=(icon or LUAOBFUSACTOR_DECRYPT_STR_0("\8\239\160\177\191\174\162\14\228\188\234\227\242\254\78\190\237\230\245\238\247\75\191\237\230\253\239", "\199\122\141\216\208\204\221"))});
	end);
end
local Players = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\157\209\17\233\125\228\190", "\150\205\189\112\144\24"));
local RunService = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\23\145\177\127\1\154\7\25\38\129", "\112\69\228\223\44\100\232\113"));
local LocalPlayer = Players.LocalPlayer;
local Camera = workspace.CurrentCamera;
local ScreenGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\231\28\21\214\179\114\161\193\22", "\230\180\127\103\179\214\28"));
ScreenGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\168\16\84\83\234\102\232\131\12\93", "\128\236\101\63\38\132\33");
ScreenGui.ResetOnSpawn = false;
ScreenGui.Parent = game.CoreGui;
local frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\138\187\16\73\179", "\175\204\201\113\36\214\139"));
frame.Size = UDim2.new(0, 300, 0, 400);
frame.Position = UDim2.new(0, 50, 0, 50);
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30);
frame.BorderSizePixel = 0;
frame.Active = true;
frame.Draggable = true;
frame.Parent = ScreenGui;
local uiCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\114\229\22\211\22\73\201\39", "\100\39\172\85\188"));
uiCorner.CornerRadius = UDim.new(0, 10);
uiCorner.Parent = frame;
local title = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\153\125\161\148\31\172\122\188\140", "\83\205\24\217\224"));
title.Size = UDim2.new(1, 0, 0, 60);
title.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
title.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\207\235\235\20\200\241\232\112\183\156\141\24\222\228\224\20\200\228\249\20\201\235", "\93\134\165\173");
title.TextColor3 = Color3.fromRGB(0, 255, 0);
title.Font = Enum.Font.GothamBold;
title.TextSize = 20;
title.BackgroundTransparency = 1;
title.Parent = frame;
local uiGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\139\219\230\208\59\202\187\123\176\230", "\30\222\146\161\162\90\174\210"));
uiGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 255, 0)),ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 128, 0))});
uiGradient.Parent = title;
local coords = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\209\75\104\30\201\79\114\15\233", "\106\133\46\16"));
coords.Size = UDim2.new(1, -20, 0, 40);
coords.Position = UDim2.new(0, 10, 0, 60);
coords.BackgroundTransparency = 1;
coords.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\112\15\68\188\109\101\121\11\51\200\114\105\107\96\64\197\105\116\125\13", "\32\56\64\19\156\58");
coords.TextColor3 = Color3.fromRGB(0, 255, 0);
coords.Font = Enum.Font.Gotham;
coords.TextSize = 16;
coords.TextWrapped = true;
coords.Parent = frame;
local teleportBtn1 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\110\205\253\66\120\231\148\78\199\235", "\224\58\168\133\54\58\146"));
teleportBtn1.Size = UDim2.new(0, 250, 0, 50);
teleportBtn1.Position = UDim2.new(0.5, -125, 0, 110);
teleportBtn1.BackgroundColor3 = Color3.fromRGB(0, 0, 139);
teleportBtn1.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\106\115\104\201\90\180\199\89", "\107\57\54\43\157\21\230\231");
teleportBtn1.TextColor3 = Color3.fromRGB(255, 255, 255);
teleportBtn1.Font = Enum.Font.GothamBold;
teleportBtn1.TextSize = 16;
teleportBtn1.Parent = frame;
local btn1Corner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\238\162\50\250\171\210\202\201", "\175\187\235\113\149\217\188"));
btn1Corner.CornerRadius = UDim.new(0, 5);
btn1Corner.Parent = teleportBtn1;
teleportBtn1.MouseEnter:Connect(function()
	teleportBtn1.BackgroundColor3 = Color3.fromRGB(0, 0, 205);
end);
teleportBtn1.MouseLeave:Connect(function()
	teleportBtn1.BackgroundColor3 = Color3.fromRGB(0, 0, 139);
end);
local teleportBtn2 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\8\170\153\88\193\108\108\40\160\143", "\24\92\207\225\44\131\25"));
teleportBtn2.Size = UDim2.new(0, 250, 0, 50);
teleportBtn2.Position = UDim2.new(0.5, -125, 0, 170);
teleportBtn2.BackgroundColor3 = Color3.fromRGB(0, 0, 139);
teleportBtn2.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\103\252\154\110\34", "\29\43\179\216\44\123");
teleportBtn2.TextColor3 = Color3.fromRGB(255, 255, 255);
teleportBtn2.Font = Enum.Font.GothamBold;
teleportBtn2.TextSize = 16;
teleportBtn2.Parent = frame;
local btn2Corner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\136\240\3\67\175\215\37\94", "\44\221\185\64"));
btn2Corner.CornerRadius = UDim.new(0, 5);
btn2Corner.Parent = teleportBtn2;
teleportBtn2.MouseEnter:Connect(function()
	teleportBtn2.BackgroundColor3 = Color3.fromRGB(0, 0, 205);
end);
teleportBtn2.MouseLeave:Connect(function()
	teleportBtn2.BackgroundColor3 = Color3.fromRGB(0, 0, 139);
end);
local teleportBtn3 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\53\226\80\75\81\20\243\92\80\125", "\19\97\135\40\63"));
teleportBtn3.Size = UDim2.new(0, 250, 0, 50);
teleportBtn3.Position = UDim2.new(0.5, -125, 0, 230);
teleportBtn3.BackgroundColor3 = Color3.fromRGB(0, 0, 139);
teleportBtn3.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\130\115\17\25\22", "\81\206\60\83\91\79");
teleportBtn3.TextColor3 = Color3.fromRGB(255, 255, 255);
teleportBtn3.Font = Enum.Font.GothamBold;
teleportBtn3.TextSize = 16;
teleportBtn3.Parent = frame;
local btn3Corner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\123\130\243\125\61\205\72\182", "\196\46\203\176\18\79\163\45"));
btn3Corner.CornerRadius = UDim.new(0, 5);
btn3Corner.Parent = teleportBtn3;
teleportBtn3.MouseEnter:Connect(function()
	teleportBtn3.BackgroundColor3 = Color3.fromRGB(0, 0, 205);
end);
teleportBtn3.MouseLeave:Connect(function()
	teleportBtn3.BackgroundColor3 = Color3.fromRGB(0, 0, 139);
end);
local teleportBtn4 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\39\102\10\6\238\251\172\45\112", "\143\216\66\30\126\68\155"));
teleportBtn4.Size = UDim2.new(0, 250, 0, 50);
teleportBtn4.Position = UDim2.new(0.5, -125, 0, 290);
teleportBtn4.BackgroundColor3 = Color3.fromRGB(0, 0, 139);
teleportBtn4.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\141\233\57\238", "\129\202\168\109\171\165\195\183");
teleportBtn4.TextColor3 = Color3.fromRGB(255, 255, 255);
teleportBtn4.Font = Enum.Font.GothamBold;
teleportBtn4.TextSize = 16;
teleportBtn4.Parent = frame;
local btn4Corner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\23\113\20\215\204\26\227\48", "\134\66\56\87\184\190\116"));
btn4Corner.CornerRadius = UDim.new(0, 5);
btn4Corner.Parent = teleportBtn4;
teleportBtn4.MouseEnter:Connect(function()
	teleportBtn4.BackgroundColor3 = Color3.fromRGB(0, 0, 205);
end);
teleportBtn4.MouseLeave:Connect(function()
	teleportBtn4.BackgroundColor3 = Color3.fromRGB(0, 0, 139);
end);
local teleportBtn5 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\8\52\17\175\59\254\53\33\51\63", "\85\92\81\105\219\121\139\65"));
teleportBtn5.Size = UDim2.new(0, 250, 0, 50);
teleportBtn5.Position = UDim2.new(0.5, -125, 0, 350);
teleportBtn5.BackgroundColor3 = Color3.fromRGB(0, 0, 139);
teleportBtn5.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\206\150\98\98\89\241\220\135", "\191\157\211\48\37\28");
teleportBtn5.TextColor3 = Color3.fromRGB(255, 255, 255);
teleportBtn5.Font = Enum.Font.GothamBold;
teleportBtn5.TextSize = 16;
teleportBtn5.Parent = frame;
local btn5Corner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\234\54\215\19\40\209\26\230", "\90\191\127\148\124"));
btn5Corner.CornerRadius = UDim.new(0, 5);
btn5Corner.Parent = teleportBtn5;
teleportBtn5.MouseEnter:Connect(function()
	teleportBtn5.BackgroundColor3 = Color3.fromRGB(0, 0, 205);
end);
teleportBtn5.MouseLeave:Connect(function()
	teleportBtn5.BackgroundColor3 = Color3.fromRGB(0, 0, 139);
end);
local tweenService = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\76\144\43\18\118\180\43\5\110\142\45\18", "\119\24\231\78"));
local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
local function createTween(button)
	return tweenService:Create(button, tweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\177\36\191\79", "\113\226\77\197\42\188\32")]=UDim2.new(0, 260, 0, 55)});
end
local tween1 = createTween(teleportBtn1);
local tween2 = createTween(teleportBtn2);
local tween3 = createTween(teleportBtn3);
local tween4 = createTween(teleportBtn4);
local tween5 = createTween(teleportBtn5);
teleportBtn1.MouseButton1Click:Connect(function()
	tween1:Play();
	wait(0.2);
	tween1:Cancel();
	teleportBtn1.Size = UDim2.new(0, 250, 0, 50);
	local character = LocalPlayer.Character;
	if ((character and character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\18\3\249\180\52\25\253\177\8\25\251\161\10\23\230\161", "\213\90\118\148"))) or (4593 <= 2672)) then
		character:MoveTo(Vector3.new(-20, -9, -885));
		local successMsg = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\111\43\172\66\97\90\44\177\90", "\45\59\78\212\54"));
		successMsg.Size = UDim2.new(0, 250, 0, 30);
		successMsg.Position = UDim2.new(0.5, -125, 0, 350);
		successMsg.BackgroundTransparency = 1;
		successMsg.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\36\83\143\142\150\33\191\228\21\82\195\159\137\110\224\162\64\26\195\198\223\98\237\189\72\14\214\202", "\144\112\54\227\235\230\78\205");
		successMsg.TextColor3 = Color3.fromRGB(0, 255, 0);
		successMsg.Font = Enum.Font.Gotham;
		successMsg.TextSize = 14;
		successMsg.Parent = frame;
		wait(2);
		successMsg:Destroy();
	else
		warn(LUAOBFUSACTOR_DECRYPT_STR_0("\144\32\14\238\209\88\167\45\29\188\223\73\243\0\26\241\209\85\188\33\11\206\223\84\167\24\14\238\196\27\189\39\27\188\214\84\166\38\11\189", "\59\211\72\111\156\176"));
	end
end);
teleportBtn2.MouseButton1Click:Connect(function()
	tween2:Play();
	wait(0.2);
	tween2:Cancel();
	teleportBtn2.Size = UDim2.new(0, 250, 0, 50);
	local character = LocalPlayer.Character;
	if ((character and character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\102\146\238\44\64\136\234\41\124\136\236\57\126\134\241\57", "\77\46\231\131"))) or (1168 > 3156)) then
		character:MoveTo(Vector3.new(-63, -32, -1423));
		local successMsg = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\142\81\174\84\150\85\180\69\182", "\32\218\52\214"));
		successMsg.Size = UDim2.new(0, 250, 0, 30);
		successMsg.Position = UDim2.new(0.5, -125, 0, 350);
		successMsg.BackgroundTransparency = 1;
		successMsg.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\122\18\61\173\225\191\87\78\75\19\113\188\254\240\8\12\29\91\113\229\162\226\9\26\3\70\101\250\162\241", "\58\46\119\81\200\145\208\37");
		successMsg.TextColor3 = Color3.fromRGB(0, 255, 0);
		successMsg.Font = Enum.Font.Gotham;
		successMsg.TextSize = 14;
		successMsg.Parent = frame;
		wait(2);
		successMsg:Destroy();
	else
		warn(LUAOBFUSACTOR_DECRYPT_STR_0("\8\132\49\190\168\190\34\46\158\112\163\187\253\30\62\129\49\162\166\180\50\25\131\63\184\153\188\36\63\204\62\163\189\253\48\36\153\62\168\232", "\86\75\236\80\204\201\221"));
	end
end);
teleportBtn3.MouseButton1Click:Connect(function()
	tween3:Play();
	wait(0.2);
	tween3:Cancel();
	teleportBtn3.Size = UDim2.new(0, 250, 0, 50);
	local character = LocalPlayer.Character;
	if (character and character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\90\84\122\132\240\132\123\69\69\138\241\159\66\64\101\145", "\235\18\33\23\229\158"))) then
		character:MoveTo(Vector3.new(115, -31, -1488));
		local successMsg = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\100\191\217\175\124\187\195\190\92", "\219\48\218\161"));
		successMsg.Size = UDim2.new(0, 250, 0, 30);
		successMsg.Position = UDim2.new(0.5, -125, 0, 350);
		successMsg.BackgroundTransparency = 1;
		successMsg.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\208\116\112\76\203\64\242\240\116\120\9\207\64\160\181\32\41\5\155\2\179\181\61\60\4\138\27\184\188\48", "\128\132\17\28\41\187\47");
		successMsg.TextColor3 = Color3.fromRGB(0, 255, 0);
		successMsg.Font = Enum.Font.Gotham;
		successMsg.TextSize = 14;
		successMsg.Parent = frame;
		wait(2);
		successMsg:Destroy();
	else
		warn(LUAOBFUSACTOR_DECRYPT_STR_0("\34\58\7\40\92\2\38\3\40\29\14\32\70\18\72\12\51\8\53\84\5\0\9\53\73\49\51\20\46\29\15\61\18\122\91\14\39\8\62\28", "\61\97\82\102\90"));
	end
end);
teleportBtn4.MouseButton1Click:Connect(function()
	tween4:Play();
	wait(0.2);
	tween4:Cancel();
	teleportBtn4.Size = UDim2.new(0, 250, 0, 50);
	local character = LocalPlayer.Character;
	if (character and character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\132\59\166\74\201\88\23\13\158\33\164\95\247\86\12\29", "\105\204\78\203\43\167\55\126"))) then
		character:MoveTo(Vector3.new(-1616, 67, -1873));
		local successMsg = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\145\175\59\10\63\5\197\84\169", "\49\197\202\67\126\115\100\167"));
		successMsg.Size = UDim2.new(0, 250, 0, 30);
		successMsg.Position = UDim2.new(0.5, -125, 0, 350);
		successMsg.BackgroundTransparency = 1;
		successMsg.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\3\94\211\44\144\89\76\35\94\219\105\148\89\30\122\10\137\120\214\26\30\97\12\147\105\205\7\6\96\8\158", "\62\87\59\191\73\224\54");
		successMsg.TextColor3 = Color3.fromRGB(0, 255, 0);
		successMsg.Font = Enum.Font.Gotham;
		successMsg.TextSize = 14;
		successMsg.Parent = frame;
		wait(2);
		successMsg:Destroy();
	else
		warn(LUAOBFUSACTOR_DECRYPT_STR_0("\196\10\251\219\230\1\238\204\245\66\245\219\167\42\239\196\230\12\245\192\227\48\245\198\243\50\251\219\243\66\244\198\243\66\252\198\242\12\254\136", "\169\135\98\154"));
	end
end);
teleportBtn5.MouseButton1Click:Connect(function()
	tween5:Play();
	wait(0.2);
	tween5:Cancel();
	teleportBtn5.Size = UDim2.new(0, 250, 0, 50);
	local character = LocalPlayer.Character;
	if ((character and character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\227\98\41\85\243\60\193\207\69\43\91\233\3\201\217\99", "\168\171\23\68\52\157\83"))) or (572 > 4486)) then
		character:MoveTo(Vector3.new(115, -26, -1483));
		local successMsg = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\192\116\237\185\9\44\133\241\125", "\231\148\17\149\205\69\77"));
		successMsg.Size = UDim2.new(0, 250, 0, 30);
		successMsg.Position = UDim2.new(0.5, -125, 0, 350);
		successMsg.BackgroundTransparency = 1;
		successMsg.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\180\162\203\254\71\240\146\179\194\255\23\235\143\231\150\170\2\179\192\234\149\173\27\191\205\246\147\163\4\190", "\159\224\199\167\155\55");
		successMsg.TextColor3 = Color3.fromRGB(0, 255, 0);
		successMsg.Font = Enum.Font.Gotham;
		successMsg.TextSize = 14;
		successMsg.Parent = frame;
		wait(2);
		successMsg:Destroy();
	else
		warn(LUAOBFUSACTOR_DECRYPT_STR_0("\212\251\61\192\246\240\40\215\229\179\51\192\183\219\41\223\246\253\51\219\243\193\51\221\227\195\61\192\227\179\50\221\227\179\58\221\226\253\56\147", "\178\151\147\92"));
	end
end);
local uiStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\185\212\127\38\0\67\113\137", "\26\236\157\44\82\114\44"));
uiStroke.Thickness = 2;
uiStroke.Color = Color3.fromRGB(0, 128, 0);
uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
uiStroke.Parent = frame;
