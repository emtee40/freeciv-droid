# client makefile

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := freeciv
LOCAL_SRC_FILES := client/attribute.c client/audio.c client/audio_none.c client/chatline_common.c client/citydlg_common.c client/cityrepdata.c client/client_main.c client/climap.c client/climisc.c client/clinet.c client/colors_common.c client/connectdlg_common.c client/control.c client/dummy.c client/editor.c client/ggzclient.c client/global_worklist.c client/goto.c client/helpdata.c client/luaconsole_common.c client/mapctrl_common.c client/mapview_common.c client/messagewin_common.c client/options.c client/overview_common.c client/packhand.c client/packhand_gen.c client/plrdlg_common.c client/repodlgs_common.c client/reqtree.c client/servers.c client/text.c client/themes_common.c client/tilespec.c client/unitselect_common.c client/update_queue.c client/voteinfo.c android_server_impl.c callauto.c clientauto.c pyclient.c uistub.c client/agents/agents.c client/agents/cma_core.c client/agents/cma_fec.c client/agents/sha.c client/luascript/api_client_base.c client/luascript/script_client.c client/luascript/tolua_client_gen.c common/ai.c common/base.c common/borders.c common/capstr.c common/citizens.c common/city.c common/combat.c common/connection.c common/dataio.c common/diptreaty.c common/disaster.c common/effects.c common/events.c common/fc_cmdhelp.c common/fc_interface.c common/featured_text.c common/game.c common/government.c common/idex.c common/improvement.c common/map.c common/mapimg.c common/movement.c common/nation.c common/packets.c common/packets_gen.c common/player.c common/requirements.c common/research.c common/rgbcolor.c common/road.c common/spaceship.c common/specialist.c common/team.c common/tech.c common/terrain.c common/tile.c common/traderoutes.c common/unit.c common/unitlist.c common/unittype.c common/version.c common/vision.c common/workertask.c common/worklist.c common/aicore/aisupport.c common/aicore/caravan.c common/aicore/citymap.c common/aicore/cm.c common/aicore/path_finding.c common/aicore/pf_tools.c common/scriptcore/api_common_intl.c common/scriptcore/api_common_utilities.c common/scriptcore/api_game_effects.c common/scriptcore/api_game_find.c common/scriptcore/api_game_methods.c common/scriptcore/api_game_specenum.c common/scriptcore/api_signal_base.c common/scriptcore/luascript.c common/scriptcore/luascript_func.c common/scriptcore/luascript_signal.c common/scriptcore/tolua_common_a_gen.c common/scriptcore/tolua_common_z_gen.c common/scriptcore/tolua_game_gen.c common/scriptcore/tolua_signal_gen.c cvercmp/cvercmp.c server/aiiface.c server/auth.c server/barbarian.c server/citizenshand.c server/cityhand.c server/citytools.c server/cityturn.c server/civserver.c server/commands.c server/connecthand.c server/console.c server/diplhand.c server/diplomats.c server/edithand.c server/fcdb.c server/gamehand.c server/ggzserver.c server/handchat.c server/hand_gen.c server/maphand.c server/meta.c server/notify.c server/plrhand.c server/report.c server/rssanity.c server/ruleset.c server/sanitycheck.c server/savegame2.c server/savegame.c server/score.c server/sernet.c server/settings.c server/spacerace.c server/srv_log.c server/srv_main.c server/stdinhand.c server/techtools.c server/unithand.c server/unittools.c server/voting.c server/generator/height_map.c server/generator/mapgen.c server/generator/mapgen_topology.c server/generator/startpos.c server/generator/temperature_map.c server/generator/utilities.c server/scripting/api_fcdb_auth.c server/scripting/api_fcdb_base.c server/scripting/api_server_base.c server/scripting/api_server_edit.c server/scripting/api_server_notify.c server/scripting/script_fcdb.c server/scripting/script_server.c server/scripting/tolua_fcdb_gen.c server/scripting/tolua_server_gen.c server/advisors/advbuilding.c server/advisors/advcity.c server/advisors/advdata.c server/advisors/advgoto.c server/advisors/advruleset.c server/advisors/advspace.c server/advisors/advtools.c server/advisors/autoexplorer.c server/advisors/autosettlers.c server/advisors/infracache.c ai/aitraits.c ai/classic/classicai.c ai/default/advdiplomacy.c ai/default/advdomestic.c ai/default/advmilitary.c ai/default/aiair.c ai/default/aicity.c ai/default/aidata.c ai/default/aidiplomat.c ai/default/aiferry.c ai/default/aiguard.c ai/default/aihand.c ai/default/aihunt.c ai/default/ailog.c ai/default/aiparatrooper.c ai/default/aiplayer.c ai/default/aisettler.c ai/default/aitech.c ai/default/aitools.c ai/default/aiunit.c ai/stub/stubai.c ai/threaded/taicity.c ai/threaded/taimsg.c ai/threaded/taiplayer.c ai/threaded/threadedai.c utility/astring.c utility/bitvector.c utility/capability.c utility/distribute.c utility/fcbacktrace.c utility/fciconv.c utility/fcintl.c utility/fcthread.c utility/fc_utf8.c utility/genhash.c utility/genlist.c utility/inputfile.c utility/ioz.c utility/iterator.c utility/log.c utility/log_custom_format.c utility/md5.c utility/mem.c utility/netfile.c utility/netintf.c utility/rand.c utility/registry.c utility/registry_ini.c utility/section_file.c utility/shared.c utility/string_vector.c utility/support.c utility/timing.c lua/lapi.c lua/lauxlib.c lua/lbaselib.c lua/lbitlib.c lua/lcode.c lua/lcorolib.c lua/lctype.c lua/ldblib.c lua/ldebug.c lua/ldo.c lua/ldump.c lua/lfunc.c lua/lgc.c lua/linit.c lua/liolib.c lua/llex.c lua/lmathlib.c lua/lmem.c lua/loadlib.c lua/lobject.c lua/lopcodes.c lua/loslib.c lua/lparser.c lua/lstate.c lua/lstring.c lua/lstrlib.c lua/ltable.c lua/ltablib.c lua/ltm.c lua/lundump.c lua/lvm.c lua/lzio.c tolua/tolua_event.c tolua/tolua_is.c tolua/tolua_map.c tolua/tolua_push.c tolua/tolua_to.c

LOCAL_LDLIBS    := -lz -lm
LOCAL_SHARED_LIBRARIES := python2.7 curl
LOCAL_C_INCLUDES    := $(LOCAL_PATH)/client $(LOCAL_PATH)/client/include $(LOCAL_PATH)/client/agents $(LOCAL_PATH)/client/luascript $(LOCAL_PATH)/common $(LOCAL_PATH)/ai $(LOCAL_PATH)/ai/classic $(LOCAL_PATH)/ai/default $(LOCAL_PATH)/ai/threaded $(LOCAL_PATH)/common/aicore $(LOCAL_PATH)/common/scriptcore $(LOCAL_PATH)/utility $(LOCAL_PATH)/server $(LOCAL_PATH)/server/advisors $(LOCAL_PATH)/server/generator $(LOCAL_PATH)/server/scripting $(LOCAL_PATH)/lua $(LOCAL_PATH)/tolua $(LOCAL_PATH)/cvercmp $(LOCAL_PATH) jni/python/Include jni/python jni/curl/include
LOCAL_CFLAGS	:= -DHAVE_CONFIG_H

include $(BUILD_SHARED_LIBRARY)
