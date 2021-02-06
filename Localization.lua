local RTC_TOCNAME,RTC = ...

-- Basic localizations

RTC.PassTags={}
function RTC.GetLocale()
	local ColRed="|cffff4040"
	
	local DefaultEnGB = {
			["MsgNbRolls"] = "%d Roll(s)",
			["MsgRollCleared"] = "All rolls have been cleared.",
			["MsgUndoRoll"]="Undo all rolls.",
			["MsgAnnounce"] = "%s won with a roll of %d.",
			["MsgAnnounceTie"] = "Tie, %s won with a roll of %d.",
			["MsgNotRolled"]="The following people still need to roll or say '%s'",
			["MsgCheat"]="Ignoring %s's roll of %s (%s-%s).",  -- (player, roll, max_roll, min_roll)
			["MsgStart"]="New roll starting now! Type '/rnd' or '%s'",
			["MsgStartGreenAndNeed"]="New roll starting now! Type '/rnd' for need, '/rnd 1-50' for greed or '%s'",
			["MsgNextItem"]="Next item: %s",
			["MsgTooltip"]="|cffff4040Left click|r to open RTC |n|cffff4040Shift+Left click|r to open 'Loot Rolls'|n|cffff4040Right click|r to open options",
			["MsgBar"]="==============================",
			["MsgLocalRestart"]="The setting is not transferred until after a restart (/reload)",
			["MsgNbLoots"]="%d stored loot(s).",
			["MsgLootLine"]="%s: %s receives loot: %s", -- date, name, item
			["MsgLootCleared"] = "All stored loots have been cleared.",
			["MsgUndoLoot"]="Undo all loots.",
			["MsgLTnotenabled"]="Loot Tracker is not enabled.",
			["MsgRaidRoll"] = "%s won. (%d)",
			["MsgForcedAnnounce"]="No rolls",
			["MsgStartCD"]="Start a countdown with right click on [Announce] or '/rtc cd'",
			["MsgPastLoots"]="Past loots:",
			["MsgAddNote"]="%s note",
			["MsgNotesCleared"]="All player notes cleared",
						
			["TxtGreed"]="Greed",
			["TxtNeed"]="Need",
			["TxtLine"]="------------------------------------------------------------------------------------------------------",
			["pass"] = "pass",		
			
			["BtnClear"]="Clear",
			["BtnUndo"]="Undo",
			["BtnNotRolled"]="Not rolled",
			["BtnRoll"]="Roll",
			["BtnAnnounce"]="Announce",
			["BtnGreed"]="Greed",
			["BtnPass"]="Pass",			
			["BtnOpen"]="Open",
			["BtnConfig"]="Settings",
			["BtnLootRolls"]="Loot Rolls",
			["BtnOpenLoot"]="Loot Tracker",
			["BtnCSVExport"]="CSV Export",
			["BtnCancel"]="Cancel",
			["BtnRaidRoll"]="Raid Roll",
			["BtnColorNormal"]="Colour text",
			["BtnColorCheat"]="Colour cheat",
			["BtnColorGuild"]="Colour guild",
			["BtnColorInfo"]="Colour info",		
			["BtnColorChat"]="Colour chat message",
			["BtnColorScroll"]="Colour list entry",
			
			["EdtWhiteList"]="Whitelist ItemIds",
			["EdtNbLoots"]="Maximum stored loot",
			["EdtCSVexport"]="CSV-Export-Format",
			["EdtCDRefresh"]="Refresh Countdown after roll (seconds)",
			["EdtDefaultCD"]="Default Countdown (seconds)",	
			["EdtAutoCloseDelay"]="Delayed closing in seconds",
			["EdtAnnounceList"]="Entries in the announcement list",
			
			["TxtCSVJokers"]="%% %name% %class% %timestamp% %dd% %mm% %yy% %HH% %MM% %SS%",
			["TxtCSVJokers2"]="%iname% %irarity% %iraritytxt% %ilevel% %iid% %iprice% %icount% %itype% %itypetxt%",
			["TxtCSVJokersTitle"]="For CSV-Export you can use this jokers:",
			["TxtItemType"]="Attention! ItemType is independent of the rarity!",
			
			["TabRoll"]="Rolls",
			["TabLoot"]="Loot",
			["TabCSV"]="CSV",
			
			["PanelLootTracker"]="Loot Tracker",
			["HeaderRarity"]="Track Rarity",
			["HeaderItemType"]="Track ItemType",
			["HeaderSettings"]="Settings",
			["HeaderCustomLocales"]="Localization",
			["HeaderCSV"]="CSV-Export",
			["PanelAbout"]="About",
			["HeaderSlashCommand"]="Slash Commands",
			["HeaderCredits"]="Credits",
			["HeaderInfo"]="Information",
			["HeaderUsage"]="Usage",
		
			["Cboxshowminimapbutton"]="Show minimap button",
			["CboxLockMinimapButton"]="Lock minimap button position",		
			["CboxLockMinimapButtonDistance"]="Minimize minimap button distance",
			["CboxCloseOnClear"]="Close window after [Clear]",
			["CboxClearOnAnnounce"]="Clear rolls after [Announce]",
			["CboxCloseOnAnnounce"]="Close window after [Announce]",
			["CboxClearOnClose"]="Clear rolls after [Close]",
			["CboxIgnoreDouble"]="Ignore double rolls",
			["CboxRejectOutBounds"]="Reject rolls with bounds other than (1-100)",
			["CboxAnnounceIgnoreDouble"]="Only with [Announce]: Ignore double rolls",
			["CboxAnnounceRejectOutBounds"]="Only with [Announce]: Reject rolls with bounds other than (1-100)",
			["CboxPromoteRolls"]="Treat 69 as 101",
			["CboxAutoCountdownWithItem"]="Automatically start Countdown when linking item",
			["CboxNeedAndGreed"]="Use Need '/rnd' and Greed '/rnd 1-50' system, ignores out of bounce",
			["CboxShowNotRolled"]="Show [Not rolled] button",
			["CboxAutoLootRolls"]="Open 'Loot Rolls' automatically",
			["CboxAutoCloseLootRolls"]="Automatic close 'Loot Rolls' when everyone has rolled",
			["CboxClearOnStart"]="Clear when somebody starts a new roll",
			["CboxOpenOnStart"]="Open when somebody starts a new roll",
			["CboxColorName"]="Colorize names by class",
			["CboxShowClassIcon"]="Show class icon",
			["CboxOnDebug"]="Show debug information",
			["CboxShowGuildRank"]="Show guild rank",
			["CboxAutmaticAnnounce"]="Automatic announce rolls",
			
			["CboxNotfiyInnone"]="Enable on overworld",
			["CboxNotfiyInpvp"]="Enable in battleground",
			["CboxNotfiyInparty"]="Enable in dungeon",
			["CboxNotfiyInraid"]="Enable in raid dungeon",
			
			
			["CboxLTShortMessage"]="Short Message",
			["CboxLTTrackSolo"]="Track solo",
			["CboxLTTrackGroup"]="Track party",
			["CboxLTTrackSRaid"]="Track raid with 10 or less members",
			["CboxLTTrackBRaid"]="Track raid with 11 or more members",
			["CboxLTEnable"]="Enable loot tracking",
			["CboxLTSmallFont"]="Small font",
			["CboxLTShowIcon"]="Show item icon",
			
			["SlashClearRolls"]="Clear rolls",
			["SlashClearLoot"]="Clear loot",
			["SlashClearLootRolls"]="Clear 'Loot Rolls'",
			["SlashUndoRolls"]="Recover last rolls",
			["SlashUndoLoot"]="Recover last loots",
			["SlashAnnounce"]="Announce winner of the last roll",
			["SlashNotRolled"]="Remind everyone who has not rolled",
			["SlashClose"]="Close main window",
			["SlashReset"]="Reset position of main window",
			["SlashConfig"]="Open Configuration",
			["SlashAbout"]="Open about",
			["SlashStart"]="Announce a new roll, <value> can be empty or itemlink",
			["SlashOpen"]="Open main window",
			["SlashRaidRoll"]="Roll a player name",
			["SlashRaidRollList"]="Output all player",
			["SlashCountdown"]="Countdown <value> in seconds",
			["SlashNotes"]="Print all notes",
			["SlashClearNotes"]="Clear all notes",
			
			["AboutInfo"]="Have you ever tried to roll the 'Onyxia Hide Backpack' in a raid? RTC collects all roll results and sorts them. Ever thought about whether you wanted something for your second-equip, but didn't know if somebody needed it? RTC can automatically open the Blizzard 'Loot rolls' window, where you can see immediately who needs or has greed.|nIn raid ever lost the overview, who got what? Again, RTC can help you. On request, it records all items, including a variable export function.",
			
			["AboutSlashCommand"]="<value> can be true, 1, enable, false, 0, disable. If <value> is omitted, the current status switches.",
			
			["AboutUsage"]="RTC will automatically open when someone rolls the dice. Double rolls or rolls outside the default range are ignored on request.|nBy default, the automatic opening of 'Loot Rolls' is disabled. Likewise, the 'Loot Tracker' must be turned on manually.",
			
			

			
		}
		
	local locales = {
		deDE =  {
			["AboutInfo"] = "Hast du jemals versucht, um den 'Rucksack aus Onyxias Haut' in Raid zu verwürfeln? RTC sammelt alle Würfelergebnisse und sortiert sie. Schon mal überlegt, ob du was für dein Zweit-Equip haben wolltest, aber nicht wusstest, ob wer bedarf hat? RTC kann dir automatisch das Blizzard 'Beuteverteilung' Window öffnen. Dort siehst du sofort wer bedarf oder gier hat.|nIn Raid jemals die Übersicht verloren, wer was bekommen hat? Auch hier kann RTC dir helfen. Auf Wunsch zeichnet es alle Gegenstände auf, inklusive einer variablen Export-Funktion.",
			["AboutSlashCommand"] = "<value> kann true,1,enable,false,0,disable sein. Wird <value> weggelassen, schaltet der aktuelle Status um.",
			["AboutUsage"] = "RTC wird sich automatisch öffnen, wenn jemand würfelt. Doppelte Würfel oder würfe außerhalb des Standard-Bereichs werden auf wunsch ignoriert.|nStandardmäßig ist das automatische öffnen von 'Beuteverteilung' deaktivert. Genauso muss der 'Loot Tracker' manuell eingeschaltet werden.",
			["BtnAnnounce"] = "Ansagen",
			["BtnCancel"] = "Abbruch",
			["BtnClear"] = "Löschen",
			["BtnColorChat"] = "Chat-Nachricht-Farbe",
			["BtnColorCheat"] = "Cheat-Farbe",
			["BtnColorGuild"] = "Gilden-Farbe",
			["BtnColorInfo"] = "Info-Farbe",
			["BtnColorNormal"] = "Text-Farbe",
			["BtnColorScroll"] = "Listeneintrag-Farbe",
			["BtnConfig"] = "Einstellungen",
			["BtnCSVExport"] = "CSV Export",
			["BtnGreed"] = "Gier",
			["BtnLootRolls"] = "Beuteverteilung",
			["BtnNotRolled"] = "Fehlende",
			["BtnOpen"] = "Öffnen",
			["BtnOpenLoot"] = "Loot Tracker",
			["BtnPass"] = "Passen",
			["BtnRaidRoll"] = "Raid Roll",
			["BtnRoll"] = "Würfeln",
			["BtnUndo"] = "Undo",
			["CboxAnnounceIgnoreDouble"] = "Nur bei [Ansagen]: Doppelte Würfe ignorieren",
			["CboxAnnounceRejectOutBounds"] = "Nur bei [Ansagen]: Würfe außerhalb 1-100 ignorieren",
			["CboxAutmaticAnnounce"] = "Würfelergebnisse automatisch ansagen",
			["CboxAutoCloseLootRolls"] = "'Beuteverteilung' automatisch schließen, wenn verwürfelt",
			["CboxAutoLootRolls"] = "'Beuteverteilung' automatisch öffnen",
			["CboxClearOnAnnounce"] = "Würfelergebnisse löschen nach [Ansagen]",
			["CboxClearOnClose"] = "Würfelergebnisse löschen nach [Schließen]",
			["CboxClearOnStart"] = "Würfelergebnisse löschen, wenn jemand eine neue Würfelrunde startet",
			["CboxCloseOnAnnounce"] = "Fenster schließen nach [Ansagen]",
			["CboxCloseOnClear"] = "Fenster schließen nach [Löschen]",
			["CboxColorName"] = "Namen nach Klasse einfärben",
			["CboxIgnoreDouble"] = "Doppelte Würfe ignorieren",
			["CboxLockMinimapButton"] = "Minimap-Icon-Position sperren",
			["CboxLockMinimapButtonDistance"] = "Minimap-Icon-Entfernung minimieren",
			["CboxLTEnable"] = "Aktiviere loot tracking",
			["CboxLTShortMessage"] = "Kurzformat",
			["CboxLTShowIcon"] = "Zeige Beute-Icon",
			["CboxLTSmallFont"] = "Kleine Schrift",
			["CboxLTTrackBRaid"] = "Nur im Raud mít 11 oder mehr",
			["CboxLTTrackGroup"] = "Nur in einer Gruppe",
			["CboxLTTrackSolo"] = "Nur wenn alleine",
			["CboxLTTrackSRaid"] = "Nur im Raid mit 10 oder weniger",
			["CboxNeedAndGreed"] = "Verwende das Bedarf '/rnd' und Gier '/rnd 1-50' System, Würfe außerhalb ignorieren",
			["CboxNotfiyInnone"] = "Auf der Welt aktiv",
			["CboxNotfiyInparty"] = "In Instanz aktiv",
			["CboxNotfiyInpvp"] = "In Schlachtfeldern aktiv",
			["CboxNotfiyInraid"] = "In Schlachtzugs-Instanzen aktiv",
			["CboxOnDebug"] = "Zeige Debug-Informationen",
			["CboxOpenOnStart"] = "RTC öffnen, wenn jemand eine neue Würfelrunde startet",
			["CboxRejectOutBounds"] = "Würfe außerhalb 1-100 ignorieren",
			["CboxShowClassIcon"] = "Klassenzeichen anzeigen",
			["CboxShowGuildRank"] = "Zeige Gildenränge",
			["Cboxshowminimapbutton"] = "Minimap-Icon anzeigen",
			["CboxShowNotRolled"] = "Zeige [Fehlende] Button",
			["EdtAnnounceList"] = "Einträge in der Ansagen-Liste",
			["EdtAutoCloseDelay"] = "Verzögertes schließen in Sekunden",
			["EdtCDRefresh"] = "Countdown nach einem Wurf (Sekunden)",
			["EdtCSVexport"] = "CSV-Export-Format",
			["EdtDefaultCD"] = "Standard Countdown (Sekunden)",
			["EdtNbLoots"] = "Maximale Anzahl der gespeicherten Beute",
			["EdtWhiteList"] = "Whitelist ItemIds",
			["HeaderCredits"] = "Credits",
			["HeaderCSV"] = "CSV-Export",
			["HeaderCustomLocales"] = "Lokalisierung",
			["HeaderInfo"] = "Information",
			["HeaderItemType"] = "Beachte ItemType",
			["HeaderRarity"] = "Beachte Seltenheit",
			["HeaderSettings"] = "Einstellungen",
			["HeaderSlashCommand"] = "Befehle",
			["HeaderUsage"] = "Usage",
			["MsgAddNote"] = "Notiz von %s",
			["MsgAnnounce"] = "%s hat mit einer %d gewonnen",
			["MsgAnnounceTie"] = "Gleichstand, %s haben mit einer %d gewonnen.",
			["MsgBar"] = "==============================",
			["MsgCheat"] = "%s wurf mit %s (%s-%s) wird ignoriert.",
			["MsgForcedAnnounce"] = "Keine Würfelergebnisse",
			["MsgLocalRestart"] = "Die Lokalisierung wird erst nach einem Neustart übernommen (/reload)",
			["MsgLootCleared"] = "Sämtliche gespeichte Beute gelöscht",
			["MsgLootLine"] = "%s: %s erhält Beute: %s",
			["MsgLTnotenabled"] = "Loot Tracker ist nicht aktiv",
			["MsgNbLoots"] = "%d gespeicherte Beute.",
			["MsgNbRolls"] = "%d Würfelergebnisse",
			["MsgNextItem"] = "Nächster Gegenstand: %s",
			["MsgNotesCleared"] = "Alle Spielernotizen gelöscht",
			["MsgNotRolled"] = "Noch nicht gewürfelt oder '%s' geschrieben:",
			["MsgPastLoots"] = "Letzte Beute:",
			["MsgRaidRoll"] = "RaidRoll: %s hat gewonnen (%d)",
			["MsgRollCleared"] = "Alle Würfelergebnisse gelöscht.",
			["MsgStart"] = "Neue Würfelrunde! Gib '/rnd' oder '%s' ein",
			["MsgStartCD"] = "Den Countdown mit rechtsklick auf [Ansagen] oder '/rtc cd' starten",
			["MsgStartGreenAndNeed"] = "Neue Würfelrunde! Gib '/rnd' für Bedarf, '/rnd 1-50' für Gier oder '%s' ein",
			["MsgTooltip"] = "|cffff4040Linksklick|r für RTC|n|cffff4040Shift+Linksklick|r für 'Beuteverteilung'|n|cffff4040Rechtsklick|r für Einstellungen",
			["MsgUndoLoot"] = "Beute wiederhergestellt.",
			["MsgUndoRoll"] = "Alle Würfelergebnisse wieder hergestellt.",
			["PanelAbout"] = "Über",
			["PanelLootTracker"] = "Loot Tracker",
			["pass"] = "passe",
			["SlashAbout"] = "About öffnen",
			["SlashAnnounce"] = "Gewinner der letzten Würfelrunde bekannt geben",
			["SlashClearLoot"] = "Beute löschen",
			["SlashClearLootRolls"] = "'Beuteverteilung' löschen",
			["SlashClearNotes"] = "Alle Noitzen löschen",
			["SlashClearRolls"] = "Würfelergebnisse löschen",
			["SlashClose"] = "Hauptfenster schließen",
			["SlashConfig"] = "Konfiguration öffnen",
			["SlashCountdown"] = "Countdown <value> in Sekunden",
			["SlashNotes"] = "Alle Notizen ausgeben",
			["SlashNotRolled"] = "Jeden erinnern, noch zu würfeln",
			["SlashOpen"] = "Hauptfenster öffnen",
			["SlashRaidRoll"] = "Würfle einen Mitspielernamen",
			["SlashRaidRollList"] = "Ausgabe aller Mitspieler",
			["SlashReset"] = "Fensterposition zurücksetzen",
			["SlashStart"] = "Neue Würfelrunde ankündigen, <value> kann leer oder ein ItemLink sein",
			["SlashUndoLoot"] = "Letzte Beute wiederherstellen",
			["SlashUndoRolls"] = "Letzte Würfelergebnisse wiederherstellen",
			["TabCSV"] = "CSV",
			["TabLoot"] = "Beute",
			["TabRoll"] = "Würfe",
			["TxtCSVJokers"] = "%% %name% %class% %timestamp% %dd% %mm% %yy% %HH% %MM% %SS%",
			["TxtCSVJokers2"] = "%iname% %irarity% %iraritytxt% %ilevel% %iid% %iprice% %icount% %itype% %itypetxt%",
			["TxtCSVJokersTitle"] = "Für den CSV-Export stehen folgende Joker zur Verfügung",
			["TxtGreed"] = "Gier",
			["TxtItemType"] = "Achtung! ItemType ist unabhängig von der Seltenheit!",
			["TxtLine"] = "------------------------------------------------------------------------------------------------------",
			["TxtNeed"] = "Bedarf"
		},
		esMX = {
			["MsgRollCleared"] = "Todas las tiradas han sido borradas.",
			["MsgNbRolls"] = "%d Tiradas",
		},
		frFR = {
			["MsgRollCleared"] = "Tous les jets ont été effacés.",
			["MsgNbRolls"] = "%d Jet(s)",
		},
		ruRU =  {
			["AboutInfo"] = "Вы когда-нибудь пытались разыграть «Рюкзак из шкуры Ониксии» в рейде? RTC собирает все результаты бросков и сортирует их. Когда-нибудь задумывались о том, хотите ли вы что-нибудь для своего второго снаряжения, но не знаете, нужно ли это кому-нибудь? RTC может автоматически открывать окно Blizzard 'Розыгрыша добычи', где вы можете сразу увидеть, кому нужно, а кто не откажется.|nIn В рейде когда-либо теряли обзор, кто что получил? Опять же, RTC может помочь вам. По запросу записываются все предметы, включая функцию экспорта переменных.",
			["AboutSlashCommand"] = "<значение> может быть верным, 1, включить, ложным, 0, отключить. Если <значение> опущено, текущий статус переключиться.",
			["AboutUsage"] = "RTC автоматически открывается, когда кто-то бросает кости. Двойные броски или броски вне диапазона по умолчанию игнорируются по запросу.|nПо умолчанию автоматическое открытие 'Розыгрыш добычи' отключено. Аналогично, 'Розыгрыш добычи' должен быть включен вручную.",
			["BtnAnnounce"] = "Объявить",
			["BtnCancel"] = "Отмена",
			["BtnClear"] = "Очистить",
			["BtnColorChat"] = "Цветное сообщение чата",
			["BtnColorCheat"] = "Цвет мошенничества",
			["BtnColorGuild"] = "Цвет гильдии",
			["BtnColorInfo"] = "Информация о цвете",
			["BtnColorNormal"] = "Цвет текста",
			["BtnColorScroll"] = "Цвет записи в списке",
			["BtnConfig"] = "Настройки",
			["BtnCSVExport"] = "CSV Экспорт",
			["BtnGreed"] = "Не откажусь",
			["BtnLootRolls"] = "Розыгрыш предметов",
			["BtnNotRolled"] = "Не разыграно",
			["BtnOpen"] = "Открыть",
			["BtnOpenLoot"] = "Отслеживание добычи",
			["BtnPass"] = "Пас",
			["BtnRaidRoll"] = "Рейдовый бросок",
			["BtnRoll"] = "Разыграть",
			["BtnUndo"] = "Вернуть",
			["CboxAnnounceIgnoreDouble"] = "Только после [Объявить]: Игнорировать двойные броски",
			["CboxAnnounceRejectOutBounds"] = "Только после [Объявить]: Отклонить розыгрыш с диапазоном не (1-100)",
			["CboxAutmaticAnnounce"] = "Автоматическое объявление розыгрыша",
			["CboxAutoCloseLootRolls"] = "Автоматически закрывать 'Розыгрыш предметов' когда все разыграли",
			["CboxAutoLootRolls"] = "Открывать 'Розыгрыш предметов' автоматически",
			["CboxClearOnAnnounce"] = "Очистить броски после [Объявления]",
			["CboxClearOnClose"] = "Очистить броски после [Закрыть]",
			["CboxClearOnStart"] = "Очищено, когда кто-то начинает новый розыгрыш",
			["CboxCloseOnAnnounce"] = "Закрыть окно после [Объявления]",
			["CboxCloseOnClear"] = "Закрыть окно после [Очистки]",
			["CboxColorName"] = "Раскрасить имена по классам",
			["CboxIgnoreDouble"] = "Игнорировать двойные броски",
			["CboxLockMinimapButton"] = "Блокировка положения кнопки у миникарты",
			["CboxLockMinimapButtonDistance"] = "Минимизировать расстояние до миникарты",
			["CboxLTEnable"] = "Включить отслеживание добычи",
			["CboxLTShortMessage"] = "Короткое сообщение",
			["CboxLTShowIcon"] = "Показать значок предмета",
			["CboxLTSmallFont"] = "Маленький шрифт",
			["CboxLTTrackBRaid"] = "Отслеживание рейда с 11 или более участниками",
			["CboxLTTrackGroup"] = "Отследить группу",
			["CboxLTTrackSolo"] = "Отслеживать в одиночку",
			["CboxLTTrackSRaid"] = "Отслеживание рейдов с 10 или менее участниками",
			["CboxNeedAndGreed"] = "'Не откажусь' - '/rnd' и 'Не откажусь' - '/rnd 1-50' , игнор ошибок",
			["CboxNotfiyInnone"] = "Включить в мире",
			["CboxNotfiyInparty"] = "Включить в подземелье",
			["CboxNotfiyInpvp"] = "Включить на полях битвы",
			["CboxNotfiyInraid"] = "Включить в рейдовом подземелье",
			["CboxOnDebug"] = "Показать отладочную информацию",
			["CboxOpenOnStart"] = "Открыть, когда кто-то начинает новый бросок",
			["CboxRejectOutBounds"] = "Отклонить броски с диапазоном не (1-100)",
			["CboxShowClassIcon"] = "Показать значок класса",
			["CboxShowGuildRank"] = "Показать звание гильдии",
			["Cboxshowminimapbutton"] = "Показать кнопку у миникарты",
			["CboxShowNotRolled"] = "Показать [Пас] кнопку",
			["EdtAnnounceList"] = "Записи в списке объявлений",
			["EdtAutoCloseDelay"] = "Задержка закрытия в секундах",
			["EdtCDRefresh"] = "Обновить отсчет после броска (в секундах)",
			["EdtCSVexport"] = "CSV-Экспорт-Формат",
			["EdtDefaultCD"] = "Обратный отсчет по умолчанию (в секундах)",
			["EdtNbLoots"] = "Максимально сортируемая добыча",
			["EdtWhiteList"] = "Белый список ItemIds",
			["HeaderCredits"] = "Авторы",
			["HeaderCSV"] = "CSV-Экспорт",
			["HeaderCustomLocales"] = "Перевод",
			["HeaderInfo"] = "Информация",
			["HeaderItemType"] = "Отслеживать по типу предмета",
			["HeaderRarity"] = "Отслеживать по редкости",
			["HeaderSettings"] = "Настройки",
			["HeaderSlashCommand"] = "/ Команды",
			["HeaderUsage"] = "Использование",
			["MsgAnnounce"] = "%s выигрывает с броском %d.",
			["MsgAnnounceTie"] = "Ничья, %s выигрывает с броском %d.",
			["MsgBar"] = "==============================",
			["MsgCheat"] = "Игнорировать %s бросок от %s (%s-%s).",
			["MsgForcedAnnounce"] = "Нет бросков",
			["MsgLocalRestart"] = "Настройка не передается до перезагрузки (/reload)",
			["MsgLootCleared"] = "Все хранимые добычи были очищены.",
			["MsgLootLine"] = "%s: %s получает добычу: %s",
			["MsgLTnotenabled"] = "Отслеживание добычи не включено.",
			["MsgNbLoots"] = "%d хранимая добыча(и).",
			["MsgNbRolls"] = "%d бросок(и)",
			["MsgNextItem"] = "Новый бросок: %s",
			["MsgNotRolled"] = "Эти люди еще не роллили или не сказали '%s'",
			["MsgRaidRoll"] = "%s выиграл. (%d)",
			["MsgRollCleared"] = "Все броски очищены.",
			["MsgStart"] = "Новый розыгрыш стартовал! Напиши '/rnd' или '%s'",
			["MsgStartCD"] = "Начните обратный отсчет правой кнопкой мыши на [Объявить] или '/rtc cd'",
			["MsgStartGreenAndNeed"] = "Новый розыгрыш стартовал! Напиши '/rnd' если 'Нужно', '/rnd 1-50' для не откажусь или '%s'",
			["MsgTooltip"] = "|cffff4040ЛКМ|r для открытия RTC |n|cffff4040Нажмите ШИФТ+ЛКМ|r открыть 'Розыгрыш предметов'|n|cffff4040ПКМ|r открыть настройки",
			["MsgUndoLoot"] = "Отменить все лоты.",
			["MsgUndoRoll"] = "Отменить все броски",
			["PanelAbout"] = "Информация",
			["PanelLootTracker"] = "Отслеживание добычи",
			["pass"] = "пас",
			["SlashAbout"] = "Информация",
			["SlashAnnounce"] = "Объявить победителя последнего розыгрыша",
			["SlashClearLoot"] = "Убрать добычу",
			["SlashClearLootRolls"] = "Очистить 'Розыгрыш добычи'",
			["SlashClearRolls"] = "Очистить броски",
			["SlashClose"] = "Закрыть главное окно",
			["SlashConfig"] = "Открыть конфигурацию",
			["SlashCountdown"] = "Обратный отсчет <значение> в секундах",
			["SlashNotRolled"] = "Напомните всем, кто еще не бросал",
			["SlashOpen"] = "Открыть главное окно",
			["SlashRaidRoll"] = "Имя бросавшего игрока",
			["SlashRaidRollList"] = "Вывести всех игроков",
			["SlashReset"] = "Сбросить положение главного окна",
			["SlashStart"] = "Объявить новый розыгрыш, <значение> может быть пустым или ссылка на предмет",
			["SlashUndoLoot"] = "Восстановить последнею добычу",
			["SlashUndoRolls"] = "Восстановить последние броски",
			["TabCSV"] = "CSV",
			["TabLoot"] = "Добыча",
			["TabRoll"] = "Броски",
			["TxtCSVJokers"] = "%% %name% %class% %timestamp% %dd% %mm% %yy% %HH% %MM% %SS%",
			["TxtCSVJokers2"] = "%iname% %irarity% %iraritytxt% %ilevel% %iid% %iprice% %icount% %itype% %itypetxt%",
			["TxtCSVJokersTitle"] = "Для CSV-Экспорта вы можете использовать следующие джокеры:",
			["TxtGreed"] = "Не откажусь",
			["TxtItemType"] = "Внимание! Тип добычи не зависит от редкости!",
			["TxtLine"] = "------------------------------------------------------------------------------------------------------",
			["TxtNeed"] = "Мне это нужно"
		},
		zhCN = {
			["AboutInfo"] = "你有没有试过在一次Raid中roll一个 '奥妮克希亚皮袋' ? RTC收集所有Roll点并对其进行排序。有没有想过你是否想要第二套装备，但不知道是否有人需要？RTC可以自动打开暴雪的“战利品Roll点”窗口，在那里你可以立即看到谁需要或贪婪",
			["AboutSlashCommand"] = "<value>可以为true, 1, enable, false, 0, disable.",
			["AboutUsage"] = "当有人掷骰子时，RTC将自动打开. 根据要求忽略默认范围以外的重复Roll点.|n默认情况下，“战利品Roll点”的自动打开被禁用。同样，必须手动开启“战利品追踪器”.",
			["BtnAnnounce"] = "通告",
			["BtnCancel"] = "取消",
			["BtnClear"] = "清除",
			--[[Translation missing --]]
			--[[ ["BtnColorChat"] = "Colour chat message",--]] 
			--[[Translation missing --]]
			--[[ ["BtnColorCheat"] = "Colour cheat",--]] 
			--[[Translation missing --]]
			--[[ ["BtnColorGuild"] = "Colour guild",--]] 
			--[[Translation missing --]]
			--[[ ["BtnColorInfo"] = "Colour info",--]] 
			--[[Translation missing --]]
			--[[ ["BtnColorNormal"] = "Colour text",--]] 
			--[[Translation missing --]]
			--[[ ["BtnColorScroll"] = "Colour list entry",--]] 
			["BtnConfig"] = "设置",
			["BtnCSVExport"] = "CSV导出",
			["BtnGreed"] = "贪婪",
			["BtnLootRolls"] = "战利品Roll点",
			["BtnNotRolled"] = "未Roll过的",
			["BtnOpen"] = "打开",
			["BtnOpenLoot"] = "战利品监视器",
			["BtnPass"] = "放弃",
			["BtnRaidRoll"] = "Raid Roll点",
			["BtnRoll"] = "Roll",
			["BtnUndo"] = "撤销",
			["CboxAnnounceIgnoreDouble"] = "只[通告]: 忽略重复Roll点",
			["CboxAnnounceRejectOutBounds"] = "只[通告]: 拒绝不是(1-100)的Roll点",
			--[[Translation missing --]]
			--[[ ["CboxAutmaticAnnounce"] = "Automatic announce rolls",--]] 
			["CboxAutoCloseLootRolls"] = "当所有人都Roll之后自动关闭 '战利品Roll点'",
			["CboxAutoLootRolls"] = "自动打开 '战利品Roll点'",
			["CboxClearOnAnnounce"] = "[通告]后清除Roll点",
			["CboxClearOnClose"] = "[关闭]后清除Roll点",
			["CboxClearOnStart"] = "当有人开始新的Roll时清除",
			["CboxCloseOnAnnounce"] = "[通告]后关闭窗口",
			["CboxCloseOnClear"] = "[清除]后关闭窗口",
			["CboxColorName"] = "由职业着色名字",
			["CboxIgnoreDouble"] = "忽略重复Roll点",
			["CboxLockMinimapButton"] = "锁定小地图按钮位置",
			["CboxLockMinimapButtonDistance"] = "最小化最小地图按钮距离",
			["CboxLTEnable"] = "启用战利品监视",
			["CboxLTShortMessage"] = "短信息",
			["CboxLTShowIcon"] = "显示物品图标",
			["CboxLTSmallFont"] = "小字体",
			["CboxLTTrackBRaid"] = "10人以上时监视",
			["CboxLTTrackGroup"] = "小队时监视",
			["CboxLTTrackSolo"] = "单人时监视",
			["CboxLTTrackSRaid"] = "10人时监视",
			["CboxNeedAndGreed"] = "输入 '/rnd' 为需求,输入 '/rnd 1-50' 为贪婪系统",
			--[[Translation missing --]]
			--[[ ["CboxNotfiyInnone"] = "Enable on overworld",--]] 
			--[[Translation missing --]]
			--[[ ["CboxNotfiyInparty"] = "Enable in dungeon",--]] 
			--[[Translation missing --]]
			--[[ ["CboxNotfiyInpvp"] = "Enable in battleground",--]] 
			--[[Translation missing --]]
			--[[ ["CboxNotfiyInraid"] = "Enable in raid dungeon",--]] 
			["CboxOnDebug"] = "显示调试信息",
			["CboxOpenOnStart"] = "当有人开始新的Roll时打开",
			["CboxRejectOutBounds"] = "拒绝不是(1-100)的Roll点",
			["CboxShowClassIcon"] = "显示职业图标",
			["CboxShowGuildRank"] = "显示公会会阶",
			["Cboxshowminimapbutton"] = "显示小地图按钮",
			["CboxShowNotRolled"] = "显示 [未Roll过的] 按钮",
			--[[Translation missing --]]
			--[[ ["EdtAnnounceList"] = "Entries in the announcement list",--]] 
			["EdtAutoCloseDelay"] = "延迟关闭（秒）",
			["EdtCDRefresh"] = "Roll后刷新倒计时（秒）",
			["EdtCSVexport"] = "CSV-导出格式",
			["EdtDefaultCD"] = "默认倒计时（秒）",
			["EdtNbLoots"] = "最大库存",
			["EdtWhiteList"] = "白名单物品ID",
			--[[Translation missing --]]
			--[[ ["HeaderCredits"] = "Credits",--]] 
			["HeaderCSV"] = "CSV-导出",
			["HeaderCustomLocales"] = "本地化",
			--[[Translation missing --]]
			--[[ ["HeaderInfo"] = "Information",--]] 
			["HeaderItemType"] = "监视物品类型",
			["HeaderRarity"] = "监视品质",
			["HeaderSettings"] = "设置",
			["HeaderSlashCommand"] = "可用命令",
			--[[Translation missing --]]
			--[[ ["HeaderUsage"] = "Usage",--]] 
			["MsgAnnounce"] = "%s 赢得了Roll点, 为: %d",
			["MsgAnnounceTie"] = "%s 赢得了Roll点, 为: %d",
			["MsgBar"] = "==============================",
			["MsgCheat"] = "忽略 %s 的Roll点, %s (%s-%s)",
			["MsgForcedAnnounce"] = "无Roll点",
			["MsgLocalRestart"] = "需要重新启动（/reload）后才会传输设置",
			["MsgLootCleared"] = "所有储存的战利品都被清除了",
			["MsgLootLine"] = "%s: %s获得了物品: %s",
			["MsgLTnotenabled"] = "战利品监视器未激活",
			["MsgNbLoots"] = "%d 存储的战利品",
			["MsgNbRolls"] = "%d 个骰子",
			["MsgNextItem"] = "下一项: %s",
			["MsgNotRolled"] = "下面的人还需要Roll点,或说 '%s'",
			["MsgRaidRoll"] = "%s 胜利 (%d)",
			["MsgRollCleared"] = "所有Roll点已被清除",
			["MsgStart"] = "新的roll现在开始! 输入 '/rnd' 或 '%s'",
			["MsgStartCD"] = "右键[通告] 开始倒计时,或者输入 '/rtc cd'",
			["MsgStartGreenAndNeed"] = "新的roll现在开始! 输入 '/rnd' 为需求, '/rnd 1-50' 为贪婪或 '%s'",
			["MsgTooltip"] = "左键|r 打开Roll点监视 \\n\"..ColRed..\"Shift+左键|r 打开'战利品Roll点监视' \\n\"..ColRed..\"右键|r 打开设置",
			--[[Translation missing --]]
			--[[ ["MsgUndoLoot"] = "Undo all loots.",--]] 
			["MsgUndoRoll"] = "取消所有Roll点",
			["PanelAbout"] = "关于",
			["PanelLootTracker"] = "战利品监视器",
			["pass"] = "放弃",
			["SlashAbout"] = "打开关于",
			["SlashAnnounce"] = "通告最后一个胜利者",
			["SlashClearLoot"] = "清除战利品",
			["SlashClearLootRolls"] = "清除 '战利品Roll点'",
			["SlashClearRolls"] = "清除Roll点",
			["SlashClose"] = "关闭主窗口",
			["SlashConfig"] = "打开配置",
			["SlashCountdown"] = "倒计时<value>秒",
			["SlashNotRolled"] = "提醒所有未Roll过的人",
			--[[Translation missing --]]
			--[[ ["SlashOpen"] = "Open main window",--]] 
			["SlashRaidRoll"] = "随机Roll一个玩家",
			["SlashRaidRollList"] = "输出所有玩家",
			["SlashReset"] = "重置主窗口位置",
			["SlashStart"] = "通告新的Roll点, <value> 可以是空的也可以是物品链接",
			["SlashUndoLoot"] = "恢复最后一个战利品",
			["SlashUndoRolls"] = "恢复最后一个Roll",
			["TabCSV"] = "CSV",
			["TabLoot"] = "Loot",
			["TabRoll"] = "Rolls",
			["TxtCSVJokers"] = "%% %name% %class% %timestamp% %dd% %mm% %yy% %HH% %MM% %SS%",
			["TxtCSVJokers2"] = "%iname% %irarity% %iraritytxt% %ilevel% %iid% %iprice% %icount% %itype% %itypetxt%",
			["TxtCSVJokersTitle"] = "对于CSV导出，您可以使用此:",
			["TxtGreed"] = "贪婪",
			["TxtItemType"] = "注意！物品类型与品质无关!",
			--[[Translation missing --]]
			--[[ ["TxtLine"] = "------------------------------------------------------------------------------------------------------",--]] 
			["TxtNeed"] = "需求"
		},
		zhTW = {
			["MsgRollCleared"] = "所有擲骰紀錄已被清除。",
			["MsgNbRolls"] = "共計 %d 人擲骰",
		},
		koKR =  {
			["AboutInfo"] = "'넓어진 오닉시아 가죽 배낭'을 주사위로 굴려 본 적이 있습니까? RTC는 모든 주사위 결과를 수집하고 정렬합니다. 염두에 둔 장비가 있는데 다른 누군가가 그것을 필요로하는지 몰랐습니까? RTC는 블리자드 주사위창을 자동으로 열 수 있습니다. 여기서 누가 입찰/차비를 눌렀는지 즉시 확인할 수 있습니다. | n 공격대에서 누가 무엇을 얻었는지 놓쳤습니까? 다시, RTC가 도와 드릴 수 있습니다. 요청시 변수 내보내기 기능을 포함한 모든 항목을 기록합니다.",
			["AboutSlashCommand"] = "<값>은 true, 1, enable, false, 0, disable 일 수 있습니다. <값>를 생략하면 현재 상태가 전환됩니다.",
			["AboutUsage"] = "누군가 주사위를 굴리면 RTC가 자동으로 열립니다. 기본 범위를 벗어난 이중 롤 또는 롤은 요청시 무시됩니다. |n 기본적으로 '전리품 주사위'의 자동 열기는 비활성화됩니다. 마찬가지로 '전리품 추적기'는 수동으로 켜야합니다",
			["BtnAnnounce"] = "결과 알림",
			["BtnCancel"] = "취소",
			["BtnClear"] = "초기화",
			["BtnColorChat"] = "채팅 메세지 색상",
			["BtnColorCheat"] = "속임수 색상",
			["BtnColorGuild"] = "길드 색상",
			["BtnColorInfo"] = "정보메세지 색상",
			["BtnColorNormal"] = "텍스트 색상",
			["BtnColorScroll"] = "리스트 색상",
			["BtnConfig"] = "설정",
			["BtnCSVExport"] = "CSV 내보내기",
			["BtnGreed"] = "차비",
			["BtnLootRolls"] = "입찰",
			["BtnNotRolled"] = "주사위 포기",
			["BtnOpen"] = "열기",
			["BtnOpenLoot"] = "전리품 열기",
			["BtnPass"] = "패스",
			["BtnRaidRoll"] = "공격대 주사위",
			["BtnRoll"] = "주사위 굴림",
			["BtnUndo"] = "취소",
			["CboxAnnounceIgnoreDouble"] = "[결과 알림]시 : 처음 이외 여러번 굴리는 주사위는 무시",
			["CboxAnnounceRejectOutBounds"] = "[결과 알림]시 : (1-100)을 벗어나게 굴린 주사위는 무시",
			["CboxAutmaticAnnounce"] = "주사위 결과 자동 알림",
			["CboxAutoCloseLootRolls"] = "모든 인원이 주사위를 굴렸을 때 전리품 주사위창 닫기",
			["CboxAutoLootRolls"] = "전리품 주사위창을 자동으로 열기",
			["CboxClearOnAnnounce"] = "[결과 알림] 버튼을 눌렀을 때 주사위 기록을 초기화 합니다",
			["CboxClearOnClose"] = "[닫기] 버튼 후 주사위 초기화",
			["CboxClearOnStart"] = "누군가 주사위를 굴리면 기존 기록을 초기화 합니다",
			["CboxCloseOnAnnounce"] = "[결과 알림] 버튼을 눌렀을 때 창을 닫습니다",
			["CboxCloseOnClear"] = "[초기화] 버튼을 눌렀을 때 창을 닫습니다",
			["CboxColorName"] = "이름에 직업색상 사용",
			["CboxIgnoreDouble"] = "처음 이외 여러번 굴리는 주사위는 무시합니다",
			["CboxLockMinimapButton"] = "미니맵 버튼 고정",
			["CboxLockMinimapButtonDistance"] = "미니맵 버튼 움직임 최소화",
			["CboxLTEnable"] = "전리품 추적 활성화",
			["CboxLTShortMessage"] = "짧은 메세지",
			["CboxLTShowIcon"] = "아이템 아이콘 표시",
			["CboxLTSmallFont"] = "작은 폰트",
			["CboxLTTrackBRaid"] = "레이드 11명 이상 추적",
			["CboxLTTrackGroup"] = "파티 추적",
			["CboxLTTrackSolo"] = "솔로잉 추적",
			["CboxLTTrackSRaid"] = "레이드 10명 이하 추적",
			["CboxNeedAndGreed"] = "[/주사위]와 차비 [/주사위 1-50] 시스템 활성화, 다른 범위 무시",
			["CboxNotfiyInnone"] = "전체맵에서 사용",
			["CboxNotfiyInparty"] = "인던에서 사용",
			["CboxNotfiyInpvp"] = "전장에서 사용",
			["CboxNotfiyInraid"] = "레이드 던전에서 사용",
			["CboxOnDebug"] = "디버그 정보 보임",
			["CboxOpenOnStart"] = "누군가 새로 주사위 굴리면 열기",
			["CboxRejectOutBounds"] = "(1-100) 주사위가 아니면 무시",
			["CboxShowClassIcon"] = "직업 아이콘 사용",
			["CboxShowGuildRank"] = "길드 랭크 사용",
			["Cboxshowminimapbutton"] = "미니맵 버튼 보기",
			["CboxShowNotRolled"] = "[주사위 포기] 버튼 표시",
			["EdtAnnounceList"] = "알림 항목 리스트",
			["EdtAutoCloseDelay"] = "자동 닫힘 초",
			["EdtCDRefresh"] = "주사위 굴린뒤 새로고침 시간(초)",
			["EdtCSVexport"] = "CSV 내보내기 포맷",
			["EdtDefaultCD"] = "기본 카운트다운(초)",
			["EdtNbLoots"] = "전리품 저장 최대수",
			["EdtWhiteList"] = "화이트 리스트 아이템",
			["HeaderCredits"] = "제작자",
			["HeaderCSV"] = "CSV 내보내기",
			["HeaderCustomLocales"] = "번역하기",
			["HeaderInfo"] = "정보",
			["HeaderItemType"] = "아이템 종류 추적",
			["HeaderRarity"] = "희귀템 추적",
			["HeaderSettings"] = "설정",
			["HeaderSlashCommand"] = "슬러시(/) 명령어",
			["HeaderUsage"] = "사용",
			["MsgAnnounce"] = "[%s]님 주사위 [ %d ]으로 승리",
			["MsgAnnounceTie"] = "비김!, [ %s ]  /   주사위 [ %d ]",
			["MsgBar"] = "==============================",
			["MsgCheat"] = "무시! = [ %s ] 님의 주사위 [ %s ] (%s-%s).",
			["MsgForcedAnnounce"] = "주사위 없음",
			["MsgLocalRestart"] = "번역을 수정한 내용은 다시 시작한후에 적용됩니다 (/reload)",
			["MsgLootCleared"] = "모든 저장된 루팅 내역 지움",
			["MsgLootLine"] = "%s: %s 전리품 받음: %s",
			["MsgLTnotenabled"] = "전리품 추적기가 비활성화 되었습니다.",
			["MsgNbLoots"] = "%d 저장된 전리품",
			["MsgNbRolls"] = "%d명 주사위 굴림",
			["MsgNextItem"] = "다음 아이템: %s",
			["MsgNotRolled"] = "주사위 안굴림 사람: %s",
			["MsgRaidRoll"] = "%s 이김 (%d)",
			["MsgRollCleared"] = "주사위 기록이 삭제되었습니다.",
			["MsgStart"] = "새 주사위가 시작되었습니다! [/주사위] 또는 ['%s] 를 입력하세요",
			["MsgStartCD"] = "[알림]을 우클릭하여 카운트를 시작하거나 '/rtc cd'",
			["MsgStartGreenAndNeed"] = "새 주사위가 시작되었습니다!  '/rnd' 는 입찰, '/rnd 1-50' 는 차비 혹은 '%s'입니다",
			["MsgTooltip"] = "|cffff4040좌클릭|r 추적기 열기 |n|cffff4040Shift+좌클릭|r 전리품 열기 |n|cffff4040우클릭|r 옵션",
			["MsgUndoLoot"] = "모든 전리품 취소",
			["MsgUndoRoll"] = "모든 주사위 초기화",
			["PanelAbout"] = "소개",
			["PanelLootTracker"] = "루팅 추적",
			["pass"] = "패스",
			["SlashAbout"] = "소개 열기",
			["SlashAnnounce"] = "마지막 주사위 승리자 알림",
			["SlashClearLoot"] = "전리품 지우기",
			["SlashClearLootRolls"] = "전리품 주사위 지우기",
			["SlashClearRolls"] = "주사위 지우기",
			["SlashClose"] = "메인창 닫기",
			["SlashConfig"] = "설정 열기",
			["SlashCountdown"] = "카운트다운 초 <값> 설정",
			["SlashNotRolled"] = "주사위 굴리지 않은 사람 알림",
			["SlashOpen"] = "메인창 열기",
			["SlashRaidRoll"] = "주사위 굴린 플레이어",
			["SlashRaidRollList"] = "모든 플레이어 출력",
			["SlashReset"] = "메인창 위치 초기화",
			["SlashStart"] = "새로운 주사위 알림, <값>이 비어있거나 아이템링크 일 수 있습니다.",
			["SlashUndoLoot"] = "마지막 루팅 복구",
			["SlashUndoRolls"] = "마지막 주사위 복구",
			["TabCSV"] = "CSV",
			["TabLoot"] = "전리품",
			["TabRoll"] = "주사위",
			["TxtCSVJokers"] = "%% %name% %class% %timestamp% %dd% %mm% %yy% %HH% %MM% %SS%",
			["TxtCSVJokers2"] = "%iname% %irarity% %iraritytxt% %ilevel% %iid% %iprice% %icount% %itype% %itypetxt%",
			["TxtCSVJokersTitle"] = "CSV 출력에 이 조커를 사용할 수 있습니다",
			["TxtGreed"] = "차비:",
			["TxtItemType"] = "주의! 아이템 종류는 희귀성과 무관합니다!",
			["TxtLine"] = "------------------------------------------------------------------------------------------------------",
			["TxtNeed"] = "입찰:"
		},
		
		
	}
	

	
	
	
	
	
	locales.esES=locales.esMX
	
	for lkey,loc in pairs(locales) do
		if loc.pass then
			RTC.PassTags[loc.pass]=true
		end
	end
	RTC.PassTags[DefaultEnGB.pass]=true
	
	if RollTrackerClassicZDB and RollTrackerClassicZDB.OnDebug then
		for lkey,loc in pairs(locales) do
			if loc["MsgStart"] then
				for key,value in pairs(DefaultEnGB) do
					if loc[key]==nil then --or loc[key]==value then
						print ("RTC-Missing:"..lkey.."["..key.."]")
					end
				end
			end	
		end
	end
	
	
	local L = locales[GetLocale()] or {}
	
	if RollTrackerClassicZDB and RollTrackerClassicZDB.CustomLocales and type(RollTrackerClassicZDB.CustomLocales) == "table" then
		for key,value in pairs(RollTrackerClassicZDB.CustomLocales) do
			if value~=nil and value ~="" then
				L[key.."_org"]=L[key]
				L[key]=value
			end
		end
	end
	
	setmetatable(DefaultEnGB,{__index =function(t,k) return "["..k.."]" end})
	
	setmetatable(L, {
		__index = DefaultEnGB
	})
	L["AboutCredits"]="Russian translation by Arrogant_Dreamer, tierggg and Hubbotu|nKorean translation by BattleE, classe82|nSimplified Chinese translation by kokpk|nBaudzilla for the idea of the resize-code|nRollTracker Classic is an updated version of 'RollTracker Lite', originally by Jerry Chong - zanglang@gmail.com."
	
	
	return L
end