-- ==========================================
-- SCRIPT: GRIM SOUL SURVIVAL ELITE 2025
-- VERSION: 30.0 (OMNIPRESENT EDITION)
-- DESARROLLADOR: ★THE★COLLECTOR★
-- ==========================================

-- [[ VARIABLES DE CONTROL ]]
local VERSION_LOCAL = 30.0
local NOVEDADES = "¡Bienvenido! Versión Elite con Anti-Ban y Redes Sociales." 
local URL_SCRIPT = "https://raw.githubusercontent.com/alexgrim2899/Soul-Grim/refs/heads/main/SCRIP%20PRUEBA%201.lua"

local USER_DB = "COLLECTOR"
local PASS_DB = "2025"

-- [[ REDES SOCIALES ]]
local MI_YOUTUBE = "https://www.youtube.com/@TuCanal"
local MI_TELEGRAM = "https://t.me/TuUsuario"

-- [[ SISTEMA DE ACTUALIZACIÓN ]]
function CheckUpdate()
    gg.toast("📡 Verificando versión y noticias...")
    local solicitud = gg.makeRequest(URL_SCRIPT)
    
    if solicitud and solicitud.content then
        local version_nube = solicitud.content:match("VERSION_LOCAL = (%d+%.?%d*)")
        local texto_novedades = solicitud.content:match('NOVEDADES = "(.-)"') or "Mejoras de estabilidad."
        
        if version_nube and tonumber(version_nube) > VERSION_LOCAL then
            local mensaje = "🚀 ¡NUEVA ACTUALIZACIÓN!\n\n📌 Versión: v" .. version_nube .. "\n📝 NOVEDADES:\n" .. texto_novedades .. "\n\n¿Deseas descargar la nueva versión?"
            local sy = gg.alert(mensaje, "SÍ, ACTUALIZAR", "LUEGO")
            if sy == 1 then
                local f = io.open(gg.getFile(), "w")
                if f then
                    f:write(solicitud.content)
                    f:close()
                    gg.alert("✅ Actualizado con éxito. Reinicia el script.")
                    os.exit()
                end
            end
        else
            gg.toast("✅ Script al día (v" .. VERSION_LOCAL .. ")")
        end
    end
end

-- [[ LOGIN & PRESENTACIÓN ]]
function Login()
    local input = gg.prompt({"👤 Usuario:", "🔑 Contraseña:"}, {"", ""}, {"text", "number"})
    if not input then os.exit() end 
    if input[1] == USER_DB and input[2] == PASS_DB then
        gg.toast("✅ Acceso Concedido.")
        CheckUpdate()
        Presentacion()
    else
        gg.alert("❌ Datos incorrectos.")
        os.exit()
    end
end

function Presentacion()
    gg.alert([[
    ╔══════════════════════════════╗
       ¡BIENVENIDOS AL SCRIPT DE!
        ★ THE ★ COLLECTOR ★
    ╚══════════════════════════════╝
    🦅 VISTA DE ÁGUILA & SIGILO
    🛡️ ANTI-BAN & MODO DIOS
    ⚡ VIAJE INSTANTÁNEO]])
end

-- [[ MENÚ PRINCIPAL ]]
function MenuPrincipal()
    local menu = gg.choice({
        "🦅 VISTA DE ÁGUILA (Zoom Hack)",
        "🛡️ VIAJE SEGURO (Anti-Ban)",
        "👻 SIGILO (Invisibilidad)",
        "🛡️ MODO DIOS (Vida)",
        "⚔️ DURABILIDAD INFINITA",
        "⚡ VIAJE INSTANTÁNEO",
        "🛠️ ELABORACIÓN GRATIS (Planos)", 
        "💀 LIMPIAR MAPA (Kill All)",
        "🎒 MOCHILA ELITE (200)",
        "💎 MULTIPLICAR ITEMS (Split)",
        "🧹 LIMPIAR RASTROS (Memoria)",
        "⭐ CRÉDITOS / REDES",
        "❌ SALIR"
    }, nil, "★ THE ★ COLLECTOR ★ - SUPREME")

    if menu == 1 then VistaAguila() end
    if menu == 2 then ViajeSeguro() end
    if menu == 3 then SigiloInfinito() end
    if menu == 4 then ModoDios() end
    if menu == 5 then DurabilidadInfinita() end
    if menu == 6 then ViajeInstantaneo() end
    if menu == 7 then ElaboracionGratisTotal() end
    if menu == 8 then KillAll() end
    if menu == 9 then MochilaElite() end
    if menu == 10 then SplitMax() end
    if menu == 11 then LimpiarRastros() end
    if menu == 12 then MostrarCreditos() end
    if menu == 13 then os.exit() end
end

-- [[ FUNCIONES DE HACK ]]

function VistaAguila()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("15;25;35;45::20", gg.TYPE_FLOAT)
    local t = gg.choice({"🔭 Táctica", "🦅 Águila", "🔄 Reset"}, nil, "CÁMARA")
    if t == 1 then gg.editAll("60", gg.TYPE_FLOAT) elseif t == 2 then gg.editAll("100", gg.TYPE_FLOAT) end
    gg.toast("✅ Cámara Ajustada")
end

function ViajeSeguro()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("1.0;1.2;1.5::10", gg.TYPE_FLOAT)
    local res = gg.getResults(100)
    if #res > 0 then
        gg.editAll("150.0", gg.TYPE_FLOAT)
        gg.toast("🛡️ Viaje Seguro Activo (150.0)")
    else
        gg.toast("⚠️ No se pudo aplicar. Ve al mapa.")
    end
end

function DurabilidadInfinita()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("100;120;150;200::15", gg.TYPE_FLOAT)
    local res = gg.getResults(100)
    if #res > 0 then
        for i, v in ipairs(res) do v.value = "9999" v.freeze = true end
        gg.addItemsToSavedList(res)
        gg.toast("⚔️ Armas Irrompibles")
    else gg.toast("❌ No se encontraron valores") end
end

function ViajeInstantaneo()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("1.0;1.2;1.5::10", gg.TYPE_FLOAT)
    local res = gg.getResults(100)
    if #res > 0 then gg.editAll("500.0", gg.TYPE_FLOAT) gg.toast("⚡ Viaje Instantáneo")
    else gg.setSpeed(50.0) gg.toast("⚡ Speedhack x50") end
end

function ModoDios() 
    gg.clearResults()
    gg.searchNumber("100", gg.TYPE_FLOAT) 
    local r = gg.getResults(10) 
    if #r > 0 then 
        for i, v in ipairs(r) do v.value = "999999" v.freeze = true end 
        gg.addItemsToSavedList(r) 
        gg.toast("🛡️ Inmortal")
    end 
end

function SigiloInfinito() gg.clearResults() gg.searchNumber("4.0;5.0;7.0::25", gg.TYPE_FLOAT) gg.editAll("0", gg.TYPE_FLOAT) gg.toast("👻 Invisible") end
function ElaboracionGratisTotal() gg.clearResults() gg.searchNumber("0;1;1;1;0::20", gg.TYPE_BYTE) gg.editAll("1", gg.TYPE_BYTE) gg.toast("🛠️ Planos Libres") end
function KillAll() gg.clearResults() gg.searchNumber("20~5000", gg.TYPE_FLOAT) local res = gg.getResults(500) if #res > 0 then for i, v in ipairs(res) do if v.value ~= 999999 then v.value = "0" end end gg.setValues(res) end gg.toast("💀 Mapa Vacío") end
function MochilaElite() gg.clearResults() gg.searchNumber("10;15;20::10", gg.TYPE_DWORD) gg.editAll("200", gg.TYPE_DWORD) gg.toast("🎒 Mochila 200") end
function SplitMax() gg.clearResults() gg.alert("⚠️ Solo items apilables") gg.searchNumber("1~50", gg.TYPE_DWORD) gg.editAll("500", gg.TYPE_DWORD) end
function LimpiarRastros() gg.clearResults() gg.toast("🧹 Memoria Limpia") end

function MostrarCreditos()
    local c = gg.choice({"📺 YouTube", "💬 Telegram", "🔙 Volver"}, nil, "★ DESARROLLADOR ★THE★COLLECTOR★")
    if c == 1 then gg.openUrl(MI_YOUTUBE) elseif c == 2 then gg.openUrl(MI_TELEGRAM) end
end

--- EJECUCIÓN ---
Login()
while true do
    if gg.isVisible(true) then
        gg.setVisible(false)
        MenuPrincipal()
    end
    gg.sleep(100)
endend
