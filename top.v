/* Machine-generated using LiteX gen */
module top(
	output reg serial_tx,
	input serial_rx,
	input clk100,
	input cpu_reset,
	output user_led0,
	output user_led1,
	output user_led2,
	output user_led3,
	input user_sw0,
	input user_sw1,
	input user_sw2,
	input user_sw3,
	input user_btn0,
	input user_btn1,
	input user_btn2,
	input user_btn3
);

wire ctrl_reset_reset_re;
wire ctrl_reset_reset_r;
reg ctrl_reset_reset_w = 1'd0;
reg [31:0] ctrl_storage_full = 32'd305419896;
wire [31:0] ctrl_storage;
reg ctrl_re = 1'd0;
wire [31:0] ctrl_bus_errors_status;
wire ctrl_reset;
wire ctrl_bus_error;
reg [31:0] ctrl_bus_errors = 32'd0;
wire lm32_reset;
wire [29:0] lm32_ibus_adr;
wire [31:0] lm32_ibus_dat_w;
wire [31:0] lm32_ibus_dat_r;
wire [3:0] lm32_ibus_sel;
wire lm32_ibus_cyc;
wire lm32_ibus_stb;
wire lm32_ibus_ack;
wire lm32_ibus_we;
wire [2:0] lm32_ibus_cti;
wire [1:0] lm32_ibus_bte;
wire lm32_ibus_err;
wire [29:0] lm32_dbus_adr;
wire [31:0] lm32_dbus_dat_w;
wire [31:0] lm32_dbus_dat_r;
wire [3:0] lm32_dbus_sel;
wire lm32_dbus_cyc;
wire lm32_dbus_stb;
wire lm32_dbus_ack;
wire lm32_dbus_we;
wire [2:0] lm32_dbus_cti;
wire [1:0] lm32_dbus_bte;
wire lm32_dbus_err;
reg [31:0] lm32_interrupt = 32'd0;
wire [31:0] lm32_i_adr_o;
wire [31:0] lm32_d_adr_o;
wire [29:0] rom_bus_adr;
wire [31:0] rom_bus_dat_w;
wire [31:0] rom_bus_dat_r;
wire [3:0] rom_bus_sel;
wire rom_bus_cyc;
wire rom_bus_stb;
reg rom_bus_ack = 1'd0;
wire rom_bus_we;
wire [2:0] rom_bus_cti;
wire [1:0] rom_bus_bte;
reg rom_bus_err = 1'd0;
wire [12:0] rom_adr;
wire [31:0] rom_dat_r;
wire [29:0] sram_bus_adr0;
wire [31:0] sram_bus_dat_w0;
wire [31:0] sram_bus_dat_r0;
wire [3:0] sram_bus_sel;
wire sram_bus_cyc;
wire sram_bus_stb;
reg sram_bus_ack = 1'd0;
wire sram_bus_we0;
wire [2:0] sram_bus_cti;
wire [1:0] sram_bus_bte;
reg sram_bus_err = 1'd0;
wire [12:0] sram_adr;
wire [31:0] sram_dat_r;
reg [3:0] sram_we = 4'd0;
wire [31:0] sram_dat_w;
reg [13:0] interface_adr = 14'd0;
reg interface_we = 1'd0;
reg [7:0] interface_dat_w = 8'd0;
wire [7:0] interface_dat_r;
wire [29:0] bus_wishbone_adr;
wire [31:0] bus_wishbone_dat_w;
reg [31:0] bus_wishbone_dat_r = 32'd0;
wire [3:0] bus_wishbone_sel;
wire bus_wishbone_cyc;
wire bus_wishbone_stb;
reg bus_wishbone_ack = 1'd0;
wire bus_wishbone_we;
wire [2:0] bus_wishbone_cti;
wire [1:0] bus_wishbone_bte;
reg bus_wishbone_err = 1'd0;
reg [1:0] counter = 2'd0;
reg [31:0] uart_phy_storage_full = 32'd4947802;
wire [31:0] uart_phy_storage;
reg uart_phy_re = 1'd0;
wire uart_phy_sink_valid;
reg uart_phy_sink_ready = 1'd0;
wire uart_phy_sink_first;
wire uart_phy_sink_last;
wire [7:0] uart_phy_sink_payload_data;
reg uart_phy_uart_clk_txen = 1'd0;
reg [31:0] uart_phy_phase_accumulator_tx = 32'd0;
reg [7:0] uart_phy_tx_reg = 8'd0;
reg [3:0] uart_phy_tx_bitcount = 4'd0;
reg uart_phy_tx_busy = 1'd0;
reg uart_phy_source_valid = 1'd0;
wire uart_phy_source_ready;
reg uart_phy_source_first = 1'd0;
reg uart_phy_source_last = 1'd0;
reg [7:0] uart_phy_source_payload_data = 8'd0;
reg uart_phy_uart_clk_rxen = 1'd0;
reg [31:0] uart_phy_phase_accumulator_rx = 32'd0;
wire uart_phy_rx;
reg uart_phy_rx_r = 1'd0;
reg [7:0] uart_phy_rx_reg = 8'd0;
reg [3:0] uart_phy_rx_bitcount = 4'd0;
reg uart_phy_rx_busy = 1'd0;
wire uart_rxtx_re;
wire [7:0] uart_rxtx_r;
wire [7:0] uart_rxtx_w;
wire uart_txfull_status;
wire uart_rxempty_status;
wire uart_irq;
wire uart_tx_status;
reg uart_tx_pending = 1'd0;
wire uart_tx_trigger;
reg uart_tx_clear = 1'd0;
reg uart_tx_old_trigger = 1'd0;
wire uart_rx_status;
reg uart_rx_pending = 1'd0;
wire uart_rx_trigger;
reg uart_rx_clear = 1'd0;
reg uart_rx_old_trigger = 1'd0;
wire uart_status_re;
wire [1:0] uart_status_r;
reg [1:0] uart_status_w = 2'd0;
wire uart_pending_re;
wire [1:0] uart_pending_r;
reg [1:0] uart_pending_w = 2'd0;
reg [1:0] uart_storage_full = 2'd0;
wire [1:0] uart_storage;
reg uart_re = 1'd0;
wire uart_tx_fifo_sink_valid;
wire uart_tx_fifo_sink_ready;
reg uart_tx_fifo_sink_first = 1'd0;
reg uart_tx_fifo_sink_last = 1'd0;
wire [7:0] uart_tx_fifo_sink_payload_data;
wire uart_tx_fifo_source_valid;
wire uart_tx_fifo_source_ready;
wire uart_tx_fifo_source_first;
wire uart_tx_fifo_source_last;
wire [7:0] uart_tx_fifo_source_payload_data;
wire uart_tx_fifo_syncfifo_we;
wire uart_tx_fifo_syncfifo_writable;
wire uart_tx_fifo_syncfifo_re;
wire uart_tx_fifo_syncfifo_readable;
wire [9:0] uart_tx_fifo_syncfifo_din;
wire [9:0] uart_tx_fifo_syncfifo_dout;
reg [4:0] uart_tx_fifo_level = 5'd0;
reg uart_tx_fifo_replace = 1'd0;
reg [3:0] uart_tx_fifo_produce = 4'd0;
reg [3:0] uart_tx_fifo_consume = 4'd0;
reg [3:0] uart_tx_fifo_wrport_adr = 4'd0;
wire [9:0] uart_tx_fifo_wrport_dat_r;
wire uart_tx_fifo_wrport_we;
wire [9:0] uart_tx_fifo_wrport_dat_w;
wire uart_tx_fifo_do_read;
wire [3:0] uart_tx_fifo_rdport_adr;
wire [9:0] uart_tx_fifo_rdport_dat_r;
wire [7:0] uart_tx_fifo_fifo_in_payload_data;
wire uart_tx_fifo_fifo_in_first;
wire uart_tx_fifo_fifo_in_last;
wire [7:0] uart_tx_fifo_fifo_out_payload_data;
wire uart_tx_fifo_fifo_out_first;
wire uart_tx_fifo_fifo_out_last;
wire uart_rx_fifo_sink_valid;
wire uart_rx_fifo_sink_ready;
wire uart_rx_fifo_sink_first;
wire uart_rx_fifo_sink_last;
wire [7:0] uart_rx_fifo_sink_payload_data;
wire uart_rx_fifo_source_valid;
wire uart_rx_fifo_source_ready;
wire uart_rx_fifo_source_first;
wire uart_rx_fifo_source_last;
wire [7:0] uart_rx_fifo_source_payload_data;
wire uart_rx_fifo_syncfifo_we;
wire uart_rx_fifo_syncfifo_writable;
wire uart_rx_fifo_syncfifo_re;
wire uart_rx_fifo_syncfifo_readable;
wire [9:0] uart_rx_fifo_syncfifo_din;
wire [9:0] uart_rx_fifo_syncfifo_dout;
reg [4:0] uart_rx_fifo_level = 5'd0;
reg uart_rx_fifo_replace = 1'd0;
reg [3:0] uart_rx_fifo_produce = 4'd0;
reg [3:0] uart_rx_fifo_consume = 4'd0;
reg [3:0] uart_rx_fifo_wrport_adr = 4'd0;
wire [9:0] uart_rx_fifo_wrport_dat_r;
wire uart_rx_fifo_wrport_we;
wire [9:0] uart_rx_fifo_wrport_dat_w;
wire uart_rx_fifo_do_read;
wire [3:0] uart_rx_fifo_rdport_adr;
wire [9:0] uart_rx_fifo_rdport_dat_r;
wire [7:0] uart_rx_fifo_fifo_in_payload_data;
wire uart_rx_fifo_fifo_in_first;
wire uart_rx_fifo_fifo_in_last;
wire [7:0] uart_rx_fifo_fifo_out_payload_data;
wire uart_rx_fifo_fifo_out_first;
wire uart_rx_fifo_fifo_out_last;
reg uart_reset = 1'd0;
reg [31:0] timer0_load_storage_full = 32'd0;
wire [31:0] timer0_load_storage;
reg timer0_load_re = 1'd0;
reg [31:0] timer0_reload_storage_full = 32'd0;
wire [31:0] timer0_reload_storage;
reg timer0_reload_re = 1'd0;
reg timer0_en_storage_full = 1'd0;
wire timer0_en_storage;
reg timer0_en_re = 1'd0;
wire timer0_update_value_re;
wire timer0_update_value_r;
reg timer0_update_value_w = 1'd0;
reg [31:0] timer0_value_status = 32'd0;
wire timer0_irq;
wire timer0_zero_status;
reg timer0_zero_pending = 1'd0;
wire timer0_zero_trigger;
reg timer0_zero_clear = 1'd0;
reg timer0_zero_old_trigger = 1'd0;
wire timer0_eventmanager_status_re;
wire timer0_eventmanager_status_r;
wire timer0_eventmanager_status_w;
wire timer0_eventmanager_pending_re;
wire timer0_eventmanager_pending_r;
wire timer0_eventmanager_pending_w;
reg timer0_eventmanager_storage_full = 1'd0;
wire timer0_eventmanager_storage;
reg timer0_eventmanager_re = 1'd0;
reg [31:0] timer0_value = 32'd0;
(* dont_touch = "true" *) wire sys_clk;
wire sys_rst;
wire clk200_clk;
wire clk200_rst;
wire clk100_clk;
wire clk100_rst;
wire clk50_clk;
wire clk50_rst;
wire pll_locked;
wire pll_fb;
wire pll_sys;
wire pll_clk200;
wire pll_clk100;
wire pll_clk50;
reg [3:0] reset_counter = 4'd15;
reg ic_reset = 1'd1;
reg [56:0] dna_status = 57'd0;
wire dna_do;
reg [6:0] dna_cnt = 7'd0;
wire [159:0] git_status;
wire [63:0] platform_status;
wire [63:0] target_status;
reg [11:0] temperature_status = 12'd0;
reg [11:0] vccint_status = 12'd0;
reg [11:0] vccaux_status = 12'd0;
reg [11:0] vccbram_status = 12'd0;
wire [7:0] alarm;
wire ot;
wire busy;
wire [6:0] channel;
wire eoc;
wire eos;
wire [15:0] data;
wire drdy;
wire [3:0] leds;
reg [3:0] leds_storage_full = 4'd0;
wire [3:0] leds_storage;
reg leds_re = 1'd0;
reg [3:0] switches = 4'd0;
wire [3:0] switches_status;
wire irq;
wire eventsourceprocess0_status;
reg eventsourceprocess0_pending = 1'd0;
wire eventsourceprocess0_trigger;
reg eventsourceprocess0_clear = 1'd0;
reg eventsourceprocess0_old_trigger = 1'd0;
wire waittimer0_wait;
wire waittimer0_done;
reg [19:0] waittimer0_count = 20'd1000000;
wire eventsourceprocess1_status;
reg eventsourceprocess1_pending = 1'd0;
wire eventsourceprocess1_trigger;
reg eventsourceprocess1_clear = 1'd0;
reg eventsourceprocess1_old_trigger = 1'd0;
wire waittimer1_wait;
wire waittimer1_done;
reg [19:0] waittimer1_count = 20'd1000000;
wire eventsourceprocess2_status;
reg eventsourceprocess2_pending = 1'd0;
wire eventsourceprocess2_trigger;
reg eventsourceprocess2_clear = 1'd0;
reg eventsourceprocess2_old_trigger = 1'd0;
wire waittimer2_wait;
wire waittimer2_done;
reg [19:0] waittimer2_count = 20'd1000000;
wire eventsourceprocess3_status;
reg eventsourceprocess3_pending = 1'd0;
wire eventsourceprocess3_trigger;
reg eventsourceprocess3_clear = 1'd0;
reg eventsourceprocess3_old_trigger = 1'd0;
wire waittimer3_wait;
wire waittimer3_done;
reg [19:0] waittimer3_count = 20'd1000000;
wire eventmanager_status_re;
wire [3:0] eventmanager_status_r;
reg [3:0] eventmanager_status_w = 4'd0;
wire eventmanager_pending_re;
wire [3:0] eventmanager_pending_r;
reg [3:0] eventmanager_pending_w = 4'd0;
reg [3:0] eventmanager_storage_full = 4'd0;
wire [3:0] eventmanager_storage;
reg eventmanager_re = 1'd0;
wire [29:0] shared_adr;
wire [31:0] shared_dat_w;
reg [31:0] shared_dat_r = 32'd0;
wire [3:0] shared_sel;
wire shared_cyc;
wire shared_stb;
reg shared_ack = 1'd0;
wire shared_we;
wire [2:0] shared_cti;
wire [1:0] shared_bte;
wire shared_err;
wire [1:0] request;
reg grant = 1'd0;
reg [2:0] slave_sel = 3'd0;
reg [2:0] slave_sel_r = 3'd0;
reg error = 1'd0;
wire wait_1;
wire done;
reg [16:0] count = 17'd65536;
wire [13:0] interface0_bank_bus_adr;
wire interface0_bank_bus_we;
wire [7:0] interface0_bank_bus_dat_w;
reg [7:0] interface0_bank_bus_dat_r = 8'd0;
wire csrbank0_leds_out0_re;
wire [3:0] csrbank0_leds_out0_r;
wire [3:0] csrbank0_leds_out0_w;
wire csrbank0_switches_in_re;
wire [3:0] csrbank0_switches_in_r;
wire [3:0] csrbank0_switches_in_w;
wire csrbank0_buttons_ev_enable0_re;
wire [3:0] csrbank0_buttons_ev_enable0_r;
wire [3:0] csrbank0_buttons_ev_enable0_w;
wire csrbank0_sel;
wire [13:0] interface1_bank_bus_adr;
wire interface1_bank_bus_we;
wire [7:0] interface1_bank_bus_dat_w;
reg [7:0] interface1_bank_bus_dat_r = 8'd0;
wire csrbank1_scratch3_re;
wire [7:0] csrbank1_scratch3_r;
wire [7:0] csrbank1_scratch3_w;
wire csrbank1_scratch2_re;
wire [7:0] csrbank1_scratch2_r;
wire [7:0] csrbank1_scratch2_w;
wire csrbank1_scratch1_re;
wire [7:0] csrbank1_scratch1_r;
wire [7:0] csrbank1_scratch1_w;
wire csrbank1_scratch0_re;
wire [7:0] csrbank1_scratch0_r;
wire [7:0] csrbank1_scratch0_w;
wire csrbank1_bus_errors3_re;
wire [7:0] csrbank1_bus_errors3_r;
wire [7:0] csrbank1_bus_errors3_w;
wire csrbank1_bus_errors2_re;
wire [7:0] csrbank1_bus_errors2_r;
wire [7:0] csrbank1_bus_errors2_w;
wire csrbank1_bus_errors1_re;
wire [7:0] csrbank1_bus_errors1_r;
wire [7:0] csrbank1_bus_errors1_w;
wire csrbank1_bus_errors0_re;
wire [7:0] csrbank1_bus_errors0_r;
wire [7:0] csrbank1_bus_errors0_w;
wire csrbank1_sel;
wire [13:0] sram_bus_adr1;
wire sram_bus_we1;
wire [7:0] sram_bus_dat_w1;
reg [7:0] sram_bus_dat_r1 = 8'd0;
wire [2:0] adr;
wire [7:0] dat_r;
wire sel;
reg sel_r = 1'd0;
wire [13:0] interface2_bank_bus_adr;
wire interface2_bank_bus_we;
wire [7:0] interface2_bank_bus_dat_w;
reg [7:0] interface2_bank_bus_dat_r = 8'd0;
wire csrbank2_dna_id7_re;
wire csrbank2_dna_id7_r;
wire csrbank2_dna_id7_w;
wire csrbank2_dna_id6_re;
wire [7:0] csrbank2_dna_id6_r;
wire [7:0] csrbank2_dna_id6_w;
wire csrbank2_dna_id5_re;
wire [7:0] csrbank2_dna_id5_r;
wire [7:0] csrbank2_dna_id5_w;
wire csrbank2_dna_id4_re;
wire [7:0] csrbank2_dna_id4_r;
wire [7:0] csrbank2_dna_id4_w;
wire csrbank2_dna_id3_re;
wire [7:0] csrbank2_dna_id3_r;
wire [7:0] csrbank2_dna_id3_w;
wire csrbank2_dna_id2_re;
wire [7:0] csrbank2_dna_id2_r;
wire [7:0] csrbank2_dna_id2_w;
wire csrbank2_dna_id1_re;
wire [7:0] csrbank2_dna_id1_r;
wire [7:0] csrbank2_dna_id1_w;
wire csrbank2_dna_id0_re;
wire [7:0] csrbank2_dna_id0_r;
wire [7:0] csrbank2_dna_id0_w;
wire csrbank2_git_commit19_re;
wire [7:0] csrbank2_git_commit19_r;
wire [7:0] csrbank2_git_commit19_w;
wire csrbank2_git_commit18_re;
wire [7:0] csrbank2_git_commit18_r;
wire [7:0] csrbank2_git_commit18_w;
wire csrbank2_git_commit17_re;
wire [7:0] csrbank2_git_commit17_r;
wire [7:0] csrbank2_git_commit17_w;
wire csrbank2_git_commit16_re;
wire [7:0] csrbank2_git_commit16_r;
wire [7:0] csrbank2_git_commit16_w;
wire csrbank2_git_commit15_re;
wire [7:0] csrbank2_git_commit15_r;
wire [7:0] csrbank2_git_commit15_w;
wire csrbank2_git_commit14_re;
wire [7:0] csrbank2_git_commit14_r;
wire [7:0] csrbank2_git_commit14_w;
wire csrbank2_git_commit13_re;
wire [7:0] csrbank2_git_commit13_r;
wire [7:0] csrbank2_git_commit13_w;
wire csrbank2_git_commit12_re;
wire [7:0] csrbank2_git_commit12_r;
wire [7:0] csrbank2_git_commit12_w;
wire csrbank2_git_commit11_re;
wire [7:0] csrbank2_git_commit11_r;
wire [7:0] csrbank2_git_commit11_w;
wire csrbank2_git_commit10_re;
wire [7:0] csrbank2_git_commit10_r;
wire [7:0] csrbank2_git_commit10_w;
wire csrbank2_git_commit9_re;
wire [7:0] csrbank2_git_commit9_r;
wire [7:0] csrbank2_git_commit9_w;
wire csrbank2_git_commit8_re;
wire [7:0] csrbank2_git_commit8_r;
wire [7:0] csrbank2_git_commit8_w;
wire csrbank2_git_commit7_re;
wire [7:0] csrbank2_git_commit7_r;
wire [7:0] csrbank2_git_commit7_w;
wire csrbank2_git_commit6_re;
wire [7:0] csrbank2_git_commit6_r;
wire [7:0] csrbank2_git_commit6_w;
wire csrbank2_git_commit5_re;
wire [7:0] csrbank2_git_commit5_r;
wire [7:0] csrbank2_git_commit5_w;
wire csrbank2_git_commit4_re;
wire [7:0] csrbank2_git_commit4_r;
wire [7:0] csrbank2_git_commit4_w;
wire csrbank2_git_commit3_re;
wire [7:0] csrbank2_git_commit3_r;
wire [7:0] csrbank2_git_commit3_w;
wire csrbank2_git_commit2_re;
wire [7:0] csrbank2_git_commit2_r;
wire [7:0] csrbank2_git_commit2_w;
wire csrbank2_git_commit1_re;
wire [7:0] csrbank2_git_commit1_r;
wire [7:0] csrbank2_git_commit1_w;
wire csrbank2_git_commit0_re;
wire [7:0] csrbank2_git_commit0_r;
wire [7:0] csrbank2_git_commit0_w;
wire csrbank2_platform_platform7_re;
wire [7:0] csrbank2_platform_platform7_r;
wire [7:0] csrbank2_platform_platform7_w;
wire csrbank2_platform_platform6_re;
wire [7:0] csrbank2_platform_platform6_r;
wire [7:0] csrbank2_platform_platform6_w;
wire csrbank2_platform_platform5_re;
wire [7:0] csrbank2_platform_platform5_r;
wire [7:0] csrbank2_platform_platform5_w;
wire csrbank2_platform_platform4_re;
wire [7:0] csrbank2_platform_platform4_r;
wire [7:0] csrbank2_platform_platform4_w;
wire csrbank2_platform_platform3_re;
wire [7:0] csrbank2_platform_platform3_r;
wire [7:0] csrbank2_platform_platform3_w;
wire csrbank2_platform_platform2_re;
wire [7:0] csrbank2_platform_platform2_r;
wire [7:0] csrbank2_platform_platform2_w;
wire csrbank2_platform_platform1_re;
wire [7:0] csrbank2_platform_platform1_r;
wire [7:0] csrbank2_platform_platform1_w;
wire csrbank2_platform_platform0_re;
wire [7:0] csrbank2_platform_platform0_r;
wire [7:0] csrbank2_platform_platform0_w;
wire csrbank2_platform_target7_re;
wire [7:0] csrbank2_platform_target7_r;
wire [7:0] csrbank2_platform_target7_w;
wire csrbank2_platform_target6_re;
wire [7:0] csrbank2_platform_target6_r;
wire [7:0] csrbank2_platform_target6_w;
wire csrbank2_platform_target5_re;
wire [7:0] csrbank2_platform_target5_r;
wire [7:0] csrbank2_platform_target5_w;
wire csrbank2_platform_target4_re;
wire [7:0] csrbank2_platform_target4_r;
wire [7:0] csrbank2_platform_target4_w;
wire csrbank2_platform_target3_re;
wire [7:0] csrbank2_platform_target3_r;
wire [7:0] csrbank2_platform_target3_w;
wire csrbank2_platform_target2_re;
wire [7:0] csrbank2_platform_target2_r;
wire [7:0] csrbank2_platform_target2_w;
wire csrbank2_platform_target1_re;
wire [7:0] csrbank2_platform_target1_r;
wire [7:0] csrbank2_platform_target1_w;
wire csrbank2_platform_target0_re;
wire [7:0] csrbank2_platform_target0_r;
wire [7:0] csrbank2_platform_target0_w;
wire csrbank2_xadc_temperature1_re;
wire [3:0] csrbank2_xadc_temperature1_r;
wire [3:0] csrbank2_xadc_temperature1_w;
wire csrbank2_xadc_temperature0_re;
wire [7:0] csrbank2_xadc_temperature0_r;
wire [7:0] csrbank2_xadc_temperature0_w;
wire csrbank2_xadc_vccint1_re;
wire [3:0] csrbank2_xadc_vccint1_r;
wire [3:0] csrbank2_xadc_vccint1_w;
wire csrbank2_xadc_vccint0_re;
wire [7:0] csrbank2_xadc_vccint0_r;
wire [7:0] csrbank2_xadc_vccint0_w;
wire csrbank2_xadc_vccaux1_re;
wire [3:0] csrbank2_xadc_vccaux1_r;
wire [3:0] csrbank2_xadc_vccaux1_w;
wire csrbank2_xadc_vccaux0_re;
wire [7:0] csrbank2_xadc_vccaux0_r;
wire [7:0] csrbank2_xadc_vccaux0_w;
wire csrbank2_xadc_vccbram1_re;
wire [3:0] csrbank2_xadc_vccbram1_r;
wire [3:0] csrbank2_xadc_vccbram1_w;
wire csrbank2_xadc_vccbram0_re;
wire [7:0] csrbank2_xadc_vccbram0_r;
wire [7:0] csrbank2_xadc_vccbram0_w;
wire csrbank2_sel;
wire [13:0] interface3_bank_bus_adr;
wire interface3_bank_bus_we;
wire [7:0] interface3_bank_bus_dat_w;
reg [7:0] interface3_bank_bus_dat_r = 8'd0;
wire csrbank3_load3_re;
wire [7:0] csrbank3_load3_r;
wire [7:0] csrbank3_load3_w;
wire csrbank3_load2_re;
wire [7:0] csrbank3_load2_r;
wire [7:0] csrbank3_load2_w;
wire csrbank3_load1_re;
wire [7:0] csrbank3_load1_r;
wire [7:0] csrbank3_load1_w;
wire csrbank3_load0_re;
wire [7:0] csrbank3_load0_r;
wire [7:0] csrbank3_load0_w;
wire csrbank3_reload3_re;
wire [7:0] csrbank3_reload3_r;
wire [7:0] csrbank3_reload3_w;
wire csrbank3_reload2_re;
wire [7:0] csrbank3_reload2_r;
wire [7:0] csrbank3_reload2_w;
wire csrbank3_reload1_re;
wire [7:0] csrbank3_reload1_r;
wire [7:0] csrbank3_reload1_w;
wire csrbank3_reload0_re;
wire [7:0] csrbank3_reload0_r;
wire [7:0] csrbank3_reload0_w;
wire csrbank3_en0_re;
wire csrbank3_en0_r;
wire csrbank3_en0_w;
wire csrbank3_value3_re;
wire [7:0] csrbank3_value3_r;
wire [7:0] csrbank3_value3_w;
wire csrbank3_value2_re;
wire [7:0] csrbank3_value2_r;
wire [7:0] csrbank3_value2_w;
wire csrbank3_value1_re;
wire [7:0] csrbank3_value1_r;
wire [7:0] csrbank3_value1_w;
wire csrbank3_value0_re;
wire [7:0] csrbank3_value0_r;
wire [7:0] csrbank3_value0_w;
wire csrbank3_ev_enable0_re;
wire csrbank3_ev_enable0_r;
wire csrbank3_ev_enable0_w;
wire csrbank3_sel;
wire [13:0] interface4_bank_bus_adr;
wire interface4_bank_bus_we;
wire [7:0] interface4_bank_bus_dat_w;
reg [7:0] interface4_bank_bus_dat_r = 8'd0;
wire csrbank4_txfull_re;
wire csrbank4_txfull_r;
wire csrbank4_txfull_w;
wire csrbank4_rxempty_re;
wire csrbank4_rxempty_r;
wire csrbank4_rxempty_w;
wire csrbank4_ev_enable0_re;
wire [1:0] csrbank4_ev_enable0_r;
wire [1:0] csrbank4_ev_enable0_w;
wire csrbank4_sel;
wire [13:0] interface5_bank_bus_adr;
wire interface5_bank_bus_we;
wire [7:0] interface5_bank_bus_dat_w;
reg [7:0] interface5_bank_bus_dat_r = 8'd0;
wire csrbank5_tuning_word3_re;
wire [7:0] csrbank5_tuning_word3_r;
wire [7:0] csrbank5_tuning_word3_w;
wire csrbank5_tuning_word2_re;
wire [7:0] csrbank5_tuning_word2_r;
wire [7:0] csrbank5_tuning_word2_w;
wire csrbank5_tuning_word1_re;
wire [7:0] csrbank5_tuning_word1_r;
wire [7:0] csrbank5_tuning_word1_w;
wire csrbank5_tuning_word0_re;
wire [7:0] csrbank5_tuning_word0_r;
wire [7:0] csrbank5_tuning_word0_w;
wire csrbank5_sel;
reg [29:0] array_muxed0 = 30'd0;
reg [31:0] array_muxed1 = 32'd0;
reg [3:0] array_muxed2 = 4'd0;
reg array_muxed3 = 1'd0;
reg array_muxed4 = 1'd0;
reg array_muxed5 = 1'd0;
reg [2:0] array_muxed6 = 3'd0;
reg [1:0] array_muxed7 = 2'd0;
(* async_reg = "true", mr_ff = "true", dont_touch = "true" *) reg xilinxmultiregimpl0_regs0 = 1'd0;
(* async_reg = "true", dont_touch = "true" *) reg xilinxmultiregimpl0_regs1 = 1'd0;
wire xilinxasyncresetsynchronizerimpl0;
wire xilinxasyncresetsynchronizerimpl0_rst_meta;
wire xilinxasyncresetsynchronizerimpl1;
wire xilinxasyncresetsynchronizerimpl1_rst_meta;
wire xilinxasyncresetsynchronizerimpl2;
wire xilinxasyncresetsynchronizerimpl2_rst_meta;
wire xilinxasyncresetsynchronizerimpl3;
wire xilinxasyncresetsynchronizerimpl3_rst_meta;
(* async_reg = "true", mr_ff = "true", dont_touch = "true" *) reg [3:0] xilinxmultiregimpl1_regs0 = 4'd0;
(* async_reg = "true", dont_touch = "true" *) reg [3:0] xilinxmultiregimpl1_regs1 = 4'd0;

assign lm32_reset = ctrl_reset;
assign ctrl_bus_error = error;
always @(*) begin
	lm32_interrupt <= 32'd0;
	lm32_interrupt[1] <= timer0_irq;
	lm32_interrupt[2] <= uart_irq;
end
assign ctrl_reset = ctrl_reset_reset_re;
assign ctrl_bus_errors_status = ctrl_bus_errors;
assign lm32_ibus_adr = lm32_i_adr_o[31:2];
assign lm32_dbus_adr = lm32_d_adr_o[31:2];
assign rom_adr = rom_bus_adr[12:0];
assign rom_bus_dat_r = rom_dat_r;
always @(*) begin
	sram_we <= 4'd0;
	sram_we[0] <= (((sram_bus_cyc & sram_bus_stb) & sram_bus_we0) & sram_bus_sel[0]);
	sram_we[1] <= (((sram_bus_cyc & sram_bus_stb) & sram_bus_we0) & sram_bus_sel[1]);
	sram_we[2] <= (((sram_bus_cyc & sram_bus_stb) & sram_bus_we0) & sram_bus_sel[2]);
	sram_we[3] <= (((sram_bus_cyc & sram_bus_stb) & sram_bus_we0) & sram_bus_sel[3]);
end
assign sram_adr = sram_bus_adr0[12:0];
assign sram_bus_dat_r0 = sram_dat_r;
assign sram_dat_w = sram_bus_dat_w0;
assign uart_tx_fifo_sink_valid = uart_rxtx_re;
assign uart_tx_fifo_sink_payload_data = uart_rxtx_r;
assign uart_txfull_status = (~uart_tx_fifo_sink_ready);
assign uart_phy_sink_valid = uart_tx_fifo_source_valid;
assign uart_tx_fifo_source_ready = uart_phy_sink_ready;
assign uart_phy_sink_first = uart_tx_fifo_source_first;
assign uart_phy_sink_last = uart_tx_fifo_source_last;
assign uart_phy_sink_payload_data = uart_tx_fifo_source_payload_data;
assign uart_tx_trigger = (~uart_tx_fifo_sink_ready);
assign uart_rx_fifo_sink_valid = uart_phy_source_valid;
assign uart_phy_source_ready = uart_rx_fifo_sink_ready;
assign uart_rx_fifo_sink_first = uart_phy_source_first;
assign uart_rx_fifo_sink_last = uart_phy_source_last;
assign uart_rx_fifo_sink_payload_data = uart_phy_source_payload_data;
assign uart_rxempty_status = (~uart_rx_fifo_source_valid);
assign uart_rxtx_w = uart_rx_fifo_source_payload_data;
assign uart_rx_fifo_source_ready = uart_rx_clear;
assign uart_rx_trigger = (~uart_rx_fifo_source_valid);
always @(*) begin
	uart_tx_clear <= 1'd0;
	if ((uart_pending_re & uart_pending_r[0])) begin
		uart_tx_clear <= 1'd1;
	end
end
always @(*) begin
	uart_status_w <= 2'd0;
	uart_status_w[0] <= uart_tx_status;
	uart_status_w[1] <= uart_rx_status;
end
always @(*) begin
	uart_rx_clear <= 1'd0;
	if ((uart_pending_re & uart_pending_r[1])) begin
		uart_rx_clear <= 1'd1;
	end
end
always @(*) begin
	uart_pending_w <= 2'd0;
	uart_pending_w[0] <= uart_tx_pending;
	uart_pending_w[1] <= uart_rx_pending;
end
assign uart_irq = ((uart_pending_w[0] & uart_storage[0]) | (uart_pending_w[1] & uart_storage[1]));
assign uart_tx_status = uart_tx_trigger;
assign uart_rx_status = uart_rx_trigger;
assign uart_tx_fifo_syncfifo_din = {uart_tx_fifo_fifo_in_last, uart_tx_fifo_fifo_in_first, uart_tx_fifo_fifo_in_payload_data};
assign {uart_tx_fifo_fifo_out_last, uart_tx_fifo_fifo_out_first, uart_tx_fifo_fifo_out_payload_data} = uart_tx_fifo_syncfifo_dout;
assign uart_tx_fifo_sink_ready = uart_tx_fifo_syncfifo_writable;
assign uart_tx_fifo_syncfifo_we = uart_tx_fifo_sink_valid;
assign uart_tx_fifo_fifo_in_first = uart_tx_fifo_sink_first;
assign uart_tx_fifo_fifo_in_last = uart_tx_fifo_sink_last;
assign uart_tx_fifo_fifo_in_payload_data = uart_tx_fifo_sink_payload_data;
assign uart_tx_fifo_source_valid = uart_tx_fifo_syncfifo_readable;
assign uart_tx_fifo_source_first = uart_tx_fifo_fifo_out_first;
assign uart_tx_fifo_source_last = uart_tx_fifo_fifo_out_last;
assign uart_tx_fifo_source_payload_data = uart_tx_fifo_fifo_out_payload_data;
assign uart_tx_fifo_syncfifo_re = uart_tx_fifo_source_ready;
always @(*) begin
	uart_tx_fifo_wrport_adr <= 4'd0;
	if (uart_tx_fifo_replace) begin
		uart_tx_fifo_wrport_adr <= (uart_tx_fifo_produce - 1'd1);
	end else begin
		uart_tx_fifo_wrport_adr <= uart_tx_fifo_produce;
	end
end
assign uart_tx_fifo_wrport_dat_w = uart_tx_fifo_syncfifo_din;
assign uart_tx_fifo_wrport_we = (uart_tx_fifo_syncfifo_we & (uart_tx_fifo_syncfifo_writable | uart_tx_fifo_replace));
assign uart_tx_fifo_do_read = (uart_tx_fifo_syncfifo_readable & uart_tx_fifo_syncfifo_re);
assign uart_tx_fifo_rdport_adr = uart_tx_fifo_consume;
assign uart_tx_fifo_syncfifo_dout = uart_tx_fifo_rdport_dat_r;
assign uart_tx_fifo_syncfifo_writable = (uart_tx_fifo_level != 5'd16);
assign uart_tx_fifo_syncfifo_readable = (uart_tx_fifo_level != 1'd0);
assign uart_rx_fifo_syncfifo_din = {uart_rx_fifo_fifo_in_last, uart_rx_fifo_fifo_in_first, uart_rx_fifo_fifo_in_payload_data};
assign {uart_rx_fifo_fifo_out_last, uart_rx_fifo_fifo_out_first, uart_rx_fifo_fifo_out_payload_data} = uart_rx_fifo_syncfifo_dout;
assign uart_rx_fifo_sink_ready = uart_rx_fifo_syncfifo_writable;
assign uart_rx_fifo_syncfifo_we = uart_rx_fifo_sink_valid;
assign uart_rx_fifo_fifo_in_first = uart_rx_fifo_sink_first;
assign uart_rx_fifo_fifo_in_last = uart_rx_fifo_sink_last;
assign uart_rx_fifo_fifo_in_payload_data = uart_rx_fifo_sink_payload_data;
assign uart_rx_fifo_source_valid = uart_rx_fifo_syncfifo_readable;
assign uart_rx_fifo_source_first = uart_rx_fifo_fifo_out_first;
assign uart_rx_fifo_source_last = uart_rx_fifo_fifo_out_last;
assign uart_rx_fifo_source_payload_data = uart_rx_fifo_fifo_out_payload_data;
assign uart_rx_fifo_syncfifo_re = uart_rx_fifo_source_ready;
always @(*) begin
	uart_rx_fifo_wrport_adr <= 4'd0;
	if (uart_rx_fifo_replace) begin
		uart_rx_fifo_wrport_adr <= (uart_rx_fifo_produce - 1'd1);
	end else begin
		uart_rx_fifo_wrport_adr <= uart_rx_fifo_produce;
	end
end
assign uart_rx_fifo_wrport_dat_w = uart_rx_fifo_syncfifo_din;
assign uart_rx_fifo_wrport_we = (uart_rx_fifo_syncfifo_we & (uart_rx_fifo_syncfifo_writable | uart_rx_fifo_replace));
assign uart_rx_fifo_do_read = (uart_rx_fifo_syncfifo_readable & uart_rx_fifo_syncfifo_re);
assign uart_rx_fifo_rdport_adr = uart_rx_fifo_consume;
assign uart_rx_fifo_syncfifo_dout = uart_rx_fifo_rdport_dat_r;
assign uart_rx_fifo_syncfifo_writable = (uart_rx_fifo_level != 5'd16);
assign uart_rx_fifo_syncfifo_readable = (uart_rx_fifo_level != 1'd0);
assign timer0_zero_trigger = (timer0_value != 1'd0);
assign timer0_eventmanager_status_w = timer0_zero_status;
always @(*) begin
	timer0_zero_clear <= 1'd0;
	if ((timer0_eventmanager_pending_re & timer0_eventmanager_pending_r)) begin
		timer0_zero_clear <= 1'd1;
	end
end
assign timer0_eventmanager_pending_w = timer0_zero_pending;
assign timer0_irq = (timer0_eventmanager_pending_w & timer0_eventmanager_storage);
assign timer0_zero_status = timer0_zero_trigger;
assign git_status = 159'd529707638785368209853325138668832908540272182977;
assign platform_status = 63'd7021802832063889408;
assign target_status = 63'd7883953568967819264;
assign user_led0 = leds[0];
assign user_led1 = leds[1];
assign user_led2 = leds[2];
assign user_led3 = leds[3];
always @(*) begin
	switches <= 4'd0;
	switches[0] <= (~user_sw0);
	switches[1] <= (~user_sw1);
	switches[2] <= (~user_sw2);
	switches[3] <= (~user_sw3);
end
assign waittimer0_wait = user_btn0;
assign eventsourceprocess0_trigger = (~waittimer0_done);
assign waittimer1_wait = user_btn1;
assign eventsourceprocess1_trigger = (~waittimer1_done);
assign waittimer2_wait = user_btn2;
assign eventsourceprocess2_trigger = (~waittimer2_done);
assign waittimer3_wait = user_btn3;
assign eventsourceprocess3_trigger = (~waittimer3_done);
assign leds = leds_storage;
always @(*) begin
	eventsourceprocess0_clear <= 1'd0;
	if ((eventmanager_pending_re & eventmanager_pending_r[0])) begin
		eventsourceprocess0_clear <= 1'd1;
	end
end
always @(*) begin
	eventsourceprocess1_clear <= 1'd0;
	if ((eventmanager_pending_re & eventmanager_pending_r[1])) begin
		eventsourceprocess1_clear <= 1'd1;
	end
end
always @(*) begin
	eventsourceprocess2_clear <= 1'd0;
	if ((eventmanager_pending_re & eventmanager_pending_r[2])) begin
		eventsourceprocess2_clear <= 1'd1;
	end
end
always @(*) begin
	eventmanager_status_w <= 4'd0;
	eventmanager_status_w[0] <= eventsourceprocess0_status;
	eventmanager_status_w[1] <= eventsourceprocess1_status;
	eventmanager_status_w[2] <= eventsourceprocess2_status;
	eventmanager_status_w[3] <= eventsourceprocess3_status;
end
always @(*) begin
	eventsourceprocess3_clear <= 1'd0;
	if ((eventmanager_pending_re & eventmanager_pending_r[3])) begin
		eventsourceprocess3_clear <= 1'd1;
	end
end
always @(*) begin
	eventmanager_pending_w <= 4'd0;
	eventmanager_pending_w[0] <= eventsourceprocess0_pending;
	eventmanager_pending_w[1] <= eventsourceprocess1_pending;
	eventmanager_pending_w[2] <= eventsourceprocess2_pending;
	eventmanager_pending_w[3] <= eventsourceprocess3_pending;
end
assign irq = ((((eventmanager_pending_w[0] & eventmanager_storage[0]) | (eventmanager_pending_w[1] & eventmanager_storage[1])) | (eventmanager_pending_w[2] & eventmanager_storage[2])) | (eventmanager_pending_w[3] & eventmanager_storage[3]));
assign eventsourceprocess0_status = eventsourceprocess0_trigger;
assign eventsourceprocess1_status = eventsourceprocess1_trigger;
assign eventsourceprocess2_status = eventsourceprocess2_trigger;
assign eventsourceprocess3_status = eventsourceprocess3_trigger;
assign waittimer0_done = (waittimer0_count == 1'd0);
assign waittimer1_done = (waittimer1_count == 1'd0);
assign waittimer2_done = (waittimer2_count == 1'd0);
assign waittimer3_done = (waittimer3_count == 1'd0);
assign shared_adr = array_muxed0;
assign shared_dat_w = array_muxed1;
assign shared_sel = array_muxed2;
assign shared_cyc = array_muxed3;
assign shared_stb = array_muxed4;
assign shared_we = array_muxed5;
assign shared_cti = array_muxed6;
assign shared_bte = array_muxed7;
assign lm32_ibus_dat_r = shared_dat_r;
assign lm32_dbus_dat_r = shared_dat_r;
assign lm32_ibus_ack = (shared_ack & (grant == 1'd0));
assign lm32_dbus_ack = (shared_ack & (grant == 1'd1));
assign lm32_ibus_err = (shared_err & (grant == 1'd0));
assign lm32_dbus_err = (shared_err & (grant == 1'd1));
assign request = {lm32_dbus_cyc, lm32_ibus_cyc};
always @(*) begin
	slave_sel <= 3'd0;
	slave_sel[0] <= (shared_adr[28:26] == 1'd0);
	slave_sel[1] <= (shared_adr[28:26] == 1'd1);
	slave_sel[2] <= (shared_adr[28:26] == 3'd6);
end
assign rom_bus_adr = shared_adr;
assign rom_bus_dat_w = shared_dat_w;
assign rom_bus_sel = shared_sel;
assign rom_bus_stb = shared_stb;
assign rom_bus_we = shared_we;
assign rom_bus_cti = shared_cti;
assign rom_bus_bte = shared_bte;
assign sram_bus_adr0 = shared_adr;
assign sram_bus_dat_w0 = shared_dat_w;
assign sram_bus_sel = shared_sel;
assign sram_bus_stb = shared_stb;
assign sram_bus_we0 = shared_we;
assign sram_bus_cti = shared_cti;
assign sram_bus_bte = shared_bte;
assign bus_wishbone_adr = shared_adr;
assign bus_wishbone_dat_w = shared_dat_w;
assign bus_wishbone_sel = shared_sel;
assign bus_wishbone_stb = shared_stb;
assign bus_wishbone_we = shared_we;
assign bus_wishbone_cti = shared_cti;
assign bus_wishbone_bte = shared_bte;
assign rom_bus_cyc = (shared_cyc & slave_sel[0]);
assign sram_bus_cyc = (shared_cyc & slave_sel[1]);
assign bus_wishbone_cyc = (shared_cyc & slave_sel[2]);
assign shared_err = ((rom_bus_err | sram_bus_err) | bus_wishbone_err);
assign wait_1 = ((shared_stb & shared_cyc) & (~shared_ack));
always @(*) begin
	shared_dat_r <= 32'd0;
	error <= 1'd0;
	shared_ack <= 1'd0;
	shared_ack <= ((rom_bus_ack | sram_bus_ack) | bus_wishbone_ack);
	shared_dat_r <= ((({32{slave_sel_r[0]}} & rom_bus_dat_r) | ({32{slave_sel_r[1]}} & sram_bus_dat_r0)) | ({32{slave_sel_r[2]}} & bus_wishbone_dat_r));
	if (done) begin
		shared_dat_r <= 32'd4294967295;
		shared_ack <= 1'd1;
		error <= 1'd1;
	end
end
assign done = (count == 1'd0);
assign csrbank0_sel = (interface0_bank_bus_adr[13:9] == 4'd9);
assign csrbank0_leds_out0_r = interface0_bank_bus_dat_w[3:0];
assign csrbank0_leds_out0_re = ((csrbank0_sel & interface0_bank_bus_we) & (interface0_bank_bus_adr[2:0] == 1'd0));
assign csrbank0_switches_in_r = interface0_bank_bus_dat_w[3:0];
assign csrbank0_switches_in_re = ((csrbank0_sel & interface0_bank_bus_we) & (interface0_bank_bus_adr[2:0] == 1'd1));
assign eventmanager_status_r = interface0_bank_bus_dat_w[3:0];
assign eventmanager_status_re = ((csrbank0_sel & interface0_bank_bus_we) & (interface0_bank_bus_adr[2:0] == 2'd2));
assign eventmanager_pending_r = interface0_bank_bus_dat_w[3:0];
assign eventmanager_pending_re = ((csrbank0_sel & interface0_bank_bus_we) & (interface0_bank_bus_adr[2:0] == 2'd3));
assign csrbank0_buttons_ev_enable0_r = interface0_bank_bus_dat_w[3:0];
assign csrbank0_buttons_ev_enable0_re = ((csrbank0_sel & interface0_bank_bus_we) & (interface0_bank_bus_adr[2:0] == 3'd4));
assign leds_storage = leds_storage_full[3:0];
assign csrbank0_leds_out0_w = leds_storage_full[3:0];
assign csrbank0_switches_in_w = switches_status[3:0];
assign eventmanager_storage = eventmanager_storage_full[3:0];
assign csrbank0_buttons_ev_enable0_w = eventmanager_storage_full[3:0];
assign csrbank1_sel = (interface1_bank_bus_adr[13:9] == 1'd0);
assign ctrl_reset_reset_r = interface1_bank_bus_dat_w[0];
assign ctrl_reset_reset_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 1'd0));
assign csrbank1_scratch3_r = interface1_bank_bus_dat_w[7:0];
assign csrbank1_scratch3_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 1'd1));
assign csrbank1_scratch2_r = interface1_bank_bus_dat_w[7:0];
assign csrbank1_scratch2_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 2'd2));
assign csrbank1_scratch1_r = interface1_bank_bus_dat_w[7:0];
assign csrbank1_scratch1_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 2'd3));
assign csrbank1_scratch0_r = interface1_bank_bus_dat_w[7:0];
assign csrbank1_scratch0_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 3'd4));
assign csrbank1_bus_errors3_r = interface1_bank_bus_dat_w[7:0];
assign csrbank1_bus_errors3_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 3'd5));
assign csrbank1_bus_errors2_r = interface1_bank_bus_dat_w[7:0];
assign csrbank1_bus_errors2_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 3'd6));
assign csrbank1_bus_errors1_r = interface1_bank_bus_dat_w[7:0];
assign csrbank1_bus_errors1_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 3'd7));
assign csrbank1_bus_errors0_r = interface1_bank_bus_dat_w[7:0];
assign csrbank1_bus_errors0_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 4'd8));
assign ctrl_storage = ctrl_storage_full[31:0];
assign csrbank1_scratch3_w = ctrl_storage_full[31:24];
assign csrbank1_scratch2_w = ctrl_storage_full[23:16];
assign csrbank1_scratch1_w = ctrl_storage_full[15:8];
assign csrbank1_scratch0_w = ctrl_storage_full[7:0];
assign csrbank1_bus_errors3_w = ctrl_bus_errors_status[31:24];
assign csrbank1_bus_errors2_w = ctrl_bus_errors_status[23:16];
assign csrbank1_bus_errors1_w = ctrl_bus_errors_status[15:8];
assign csrbank1_bus_errors0_w = ctrl_bus_errors_status[7:0];
assign sel = (sram_bus_adr1[13:9] == 3'd4);
always @(*) begin
	sram_bus_dat_r1 <= 8'd0;
	if (sel_r) begin
		sram_bus_dat_r1 <= dat_r;
	end
end
assign adr = sram_bus_adr1[2:0];
assign csrbank2_sel = (interface2_bank_bus_adr[13:9] == 4'd8);
assign csrbank2_dna_id7_r = interface2_bank_bus_dat_w[0];
assign csrbank2_dna_id7_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 1'd0));
assign csrbank2_dna_id6_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_dna_id6_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 1'd1));
assign csrbank2_dna_id5_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_dna_id5_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 2'd2));
assign csrbank2_dna_id4_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_dna_id4_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 2'd3));
assign csrbank2_dna_id3_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_dna_id3_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 3'd4));
assign csrbank2_dna_id2_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_dna_id2_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 3'd5));
assign csrbank2_dna_id1_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_dna_id1_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 3'd6));
assign csrbank2_dna_id0_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_dna_id0_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 3'd7));
assign csrbank2_git_commit19_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit19_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 4'd8));
assign csrbank2_git_commit18_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit18_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 4'd9));
assign csrbank2_git_commit17_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit17_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 4'd10));
assign csrbank2_git_commit16_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit16_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 4'd11));
assign csrbank2_git_commit15_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit15_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 4'd12));
assign csrbank2_git_commit14_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit14_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 4'd13));
assign csrbank2_git_commit13_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit13_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 4'd14));
assign csrbank2_git_commit12_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit12_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 4'd15));
assign csrbank2_git_commit11_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit11_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 5'd16));
assign csrbank2_git_commit10_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit10_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 5'd17));
assign csrbank2_git_commit9_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit9_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 5'd18));
assign csrbank2_git_commit8_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit8_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 5'd19));
assign csrbank2_git_commit7_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit7_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 5'd20));
assign csrbank2_git_commit6_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit6_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 5'd21));
assign csrbank2_git_commit5_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit5_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 5'd22));
assign csrbank2_git_commit4_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit4_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 5'd23));
assign csrbank2_git_commit3_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit3_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 5'd24));
assign csrbank2_git_commit2_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit2_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 5'd25));
assign csrbank2_git_commit1_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit1_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 5'd26));
assign csrbank2_git_commit0_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_git_commit0_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 5'd27));
assign csrbank2_platform_platform7_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_platform_platform7_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 5'd28));
assign csrbank2_platform_platform6_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_platform_platform6_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 5'd29));
assign csrbank2_platform_platform5_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_platform_platform5_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 5'd30));
assign csrbank2_platform_platform4_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_platform_platform4_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 5'd31));
assign csrbank2_platform_platform3_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_platform_platform3_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 6'd32));
assign csrbank2_platform_platform2_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_platform_platform2_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 6'd33));
assign csrbank2_platform_platform1_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_platform_platform1_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 6'd34));
assign csrbank2_platform_platform0_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_platform_platform0_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 6'd35));
assign csrbank2_platform_target7_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_platform_target7_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 6'd36));
assign csrbank2_platform_target6_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_platform_target6_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 6'd37));
assign csrbank2_platform_target5_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_platform_target5_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 6'd38));
assign csrbank2_platform_target4_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_platform_target4_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 6'd39));
assign csrbank2_platform_target3_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_platform_target3_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 6'd40));
assign csrbank2_platform_target2_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_platform_target2_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 6'd41));
assign csrbank2_platform_target1_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_platform_target1_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 6'd42));
assign csrbank2_platform_target0_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_platform_target0_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 6'd43));
assign csrbank2_xadc_temperature1_r = interface2_bank_bus_dat_w[3:0];
assign csrbank2_xadc_temperature1_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 6'd44));
assign csrbank2_xadc_temperature0_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_xadc_temperature0_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 6'd45));
assign csrbank2_xadc_vccint1_r = interface2_bank_bus_dat_w[3:0];
assign csrbank2_xadc_vccint1_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 6'd46));
assign csrbank2_xadc_vccint0_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_xadc_vccint0_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 6'd47));
assign csrbank2_xadc_vccaux1_r = interface2_bank_bus_dat_w[3:0];
assign csrbank2_xadc_vccaux1_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 6'd48));
assign csrbank2_xadc_vccaux0_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_xadc_vccaux0_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 6'd49));
assign csrbank2_xadc_vccbram1_r = interface2_bank_bus_dat_w[3:0];
assign csrbank2_xadc_vccbram1_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 6'd50));
assign csrbank2_xadc_vccbram0_r = interface2_bank_bus_dat_w[7:0];
assign csrbank2_xadc_vccbram0_re = ((csrbank2_sel & interface2_bank_bus_we) & (interface2_bank_bus_adr[5:0] == 6'd51));
assign csrbank2_dna_id7_w = dna_status[56];
assign csrbank2_dna_id6_w = dna_status[55:48];
assign csrbank2_dna_id5_w = dna_status[47:40];
assign csrbank2_dna_id4_w = dna_status[39:32];
assign csrbank2_dna_id3_w = dna_status[31:24];
assign csrbank2_dna_id2_w = dna_status[23:16];
assign csrbank2_dna_id1_w = dna_status[15:8];
assign csrbank2_dna_id0_w = dna_status[7:0];
assign csrbank2_git_commit19_w = git_status[159:152];
assign csrbank2_git_commit18_w = git_status[151:144];
assign csrbank2_git_commit17_w = git_status[143:136];
assign csrbank2_git_commit16_w = git_status[135:128];
assign csrbank2_git_commit15_w = git_status[127:120];
assign csrbank2_git_commit14_w = git_status[119:112];
assign csrbank2_git_commit13_w = git_status[111:104];
assign csrbank2_git_commit12_w = git_status[103:96];
assign csrbank2_git_commit11_w = git_status[95:88];
assign csrbank2_git_commit10_w = git_status[87:80];
assign csrbank2_git_commit9_w = git_status[79:72];
assign csrbank2_git_commit8_w = git_status[71:64];
assign csrbank2_git_commit7_w = git_status[63:56];
assign csrbank2_git_commit6_w = git_status[55:48];
assign csrbank2_git_commit5_w = git_status[47:40];
assign csrbank2_git_commit4_w = git_status[39:32];
assign csrbank2_git_commit3_w = git_status[31:24];
assign csrbank2_git_commit2_w = git_status[23:16];
assign csrbank2_git_commit1_w = git_status[15:8];
assign csrbank2_git_commit0_w = git_status[7:0];
assign csrbank2_platform_platform7_w = platform_status[63:56];
assign csrbank2_platform_platform6_w = platform_status[55:48];
assign csrbank2_platform_platform5_w = platform_status[47:40];
assign csrbank2_platform_platform4_w = platform_status[39:32];
assign csrbank2_platform_platform3_w = platform_status[31:24];
assign csrbank2_platform_platform2_w = platform_status[23:16];
assign csrbank2_platform_platform1_w = platform_status[15:8];
assign csrbank2_platform_platform0_w = platform_status[7:0];
assign csrbank2_platform_target7_w = target_status[63:56];
assign csrbank2_platform_target6_w = target_status[55:48];
assign csrbank2_platform_target5_w = target_status[47:40];
assign csrbank2_platform_target4_w = target_status[39:32];
assign csrbank2_platform_target3_w = target_status[31:24];
assign csrbank2_platform_target2_w = target_status[23:16];
assign csrbank2_platform_target1_w = target_status[15:8];
assign csrbank2_platform_target0_w = target_status[7:0];
assign csrbank2_xadc_temperature1_w = temperature_status[11:8];
assign csrbank2_xadc_temperature0_w = temperature_status[7:0];
assign csrbank2_xadc_vccint1_w = vccint_status[11:8];
assign csrbank2_xadc_vccint0_w = vccint_status[7:0];
assign csrbank2_xadc_vccaux1_w = vccaux_status[11:8];
assign csrbank2_xadc_vccaux0_w = vccaux_status[7:0];
assign csrbank2_xadc_vccbram1_w = vccbram_status[11:8];
assign csrbank2_xadc_vccbram0_w = vccbram_status[7:0];
assign csrbank3_sel = (interface3_bank_bus_adr[13:9] == 3'd5);
assign csrbank3_load3_r = interface3_bank_bus_dat_w[7:0];
assign csrbank3_load3_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 1'd0));
assign csrbank3_load2_r = interface3_bank_bus_dat_w[7:0];
assign csrbank3_load2_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 1'd1));
assign csrbank3_load1_r = interface3_bank_bus_dat_w[7:0];
assign csrbank3_load1_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 2'd2));
assign csrbank3_load0_r = interface3_bank_bus_dat_w[7:0];
assign csrbank3_load0_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 2'd3));
assign csrbank3_reload3_r = interface3_bank_bus_dat_w[7:0];
assign csrbank3_reload3_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 3'd4));
assign csrbank3_reload2_r = interface3_bank_bus_dat_w[7:0];
assign csrbank3_reload2_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 3'd5));
assign csrbank3_reload1_r = interface3_bank_bus_dat_w[7:0];
assign csrbank3_reload1_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 3'd6));
assign csrbank3_reload0_r = interface3_bank_bus_dat_w[7:0];
assign csrbank3_reload0_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 3'd7));
assign csrbank3_en0_r = interface3_bank_bus_dat_w[0];
assign csrbank3_en0_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 4'd8));
assign timer0_update_value_r = interface3_bank_bus_dat_w[0];
assign timer0_update_value_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 4'd9));
assign csrbank3_value3_r = interface3_bank_bus_dat_w[7:0];
assign csrbank3_value3_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 4'd10));
assign csrbank3_value2_r = interface3_bank_bus_dat_w[7:0];
assign csrbank3_value2_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 4'd11));
assign csrbank3_value1_r = interface3_bank_bus_dat_w[7:0];
assign csrbank3_value1_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 4'd12));
assign csrbank3_value0_r = interface3_bank_bus_dat_w[7:0];
assign csrbank3_value0_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 4'd13));
assign timer0_eventmanager_status_r = interface3_bank_bus_dat_w[0];
assign timer0_eventmanager_status_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 4'd14));
assign timer0_eventmanager_pending_r = interface3_bank_bus_dat_w[0];
assign timer0_eventmanager_pending_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 4'd15));
assign csrbank3_ev_enable0_r = interface3_bank_bus_dat_w[0];
assign csrbank3_ev_enable0_re = ((csrbank3_sel & interface3_bank_bus_we) & (interface3_bank_bus_adr[4:0] == 5'd16));
assign timer0_load_storage = timer0_load_storage_full[31:0];
assign csrbank3_load3_w = timer0_load_storage_full[31:24];
assign csrbank3_load2_w = timer0_load_storage_full[23:16];
assign csrbank3_load1_w = timer0_load_storage_full[15:8];
assign csrbank3_load0_w = timer0_load_storage_full[7:0];
assign timer0_reload_storage = timer0_reload_storage_full[31:0];
assign csrbank3_reload3_w = timer0_reload_storage_full[31:24];
assign csrbank3_reload2_w = timer0_reload_storage_full[23:16];
assign csrbank3_reload1_w = timer0_reload_storage_full[15:8];
assign csrbank3_reload0_w = timer0_reload_storage_full[7:0];
assign timer0_en_storage = timer0_en_storage_full;
assign csrbank3_en0_w = timer0_en_storage_full;
assign csrbank3_value3_w = timer0_value_status[31:24];
assign csrbank3_value2_w = timer0_value_status[23:16];
assign csrbank3_value1_w = timer0_value_status[15:8];
assign csrbank3_value0_w = timer0_value_status[7:0];
assign timer0_eventmanager_storage = timer0_eventmanager_storage_full;
assign csrbank3_ev_enable0_w = timer0_eventmanager_storage_full;
assign csrbank4_sel = (interface4_bank_bus_adr[13:9] == 2'd3);
assign uart_rxtx_r = interface4_bank_bus_dat_w[7:0];
assign uart_rxtx_re = ((csrbank4_sel & interface4_bank_bus_we) & (interface4_bank_bus_adr[2:0] == 1'd0));
assign csrbank4_txfull_r = interface4_bank_bus_dat_w[0];
assign csrbank4_txfull_re = ((csrbank4_sel & interface4_bank_bus_we) & (interface4_bank_bus_adr[2:0] == 1'd1));
assign csrbank4_rxempty_r = interface4_bank_bus_dat_w[0];
assign csrbank4_rxempty_re = ((csrbank4_sel & interface4_bank_bus_we) & (interface4_bank_bus_adr[2:0] == 2'd2));
assign uart_status_r = interface4_bank_bus_dat_w[1:0];
assign uart_status_re = ((csrbank4_sel & interface4_bank_bus_we) & (interface4_bank_bus_adr[2:0] == 2'd3));
assign uart_pending_r = interface4_bank_bus_dat_w[1:0];
assign uart_pending_re = ((csrbank4_sel & interface4_bank_bus_we) & (interface4_bank_bus_adr[2:0] == 3'd4));
assign csrbank4_ev_enable0_r = interface4_bank_bus_dat_w[1:0];
assign csrbank4_ev_enable0_re = ((csrbank4_sel & interface4_bank_bus_we) & (interface4_bank_bus_adr[2:0] == 3'd5));
assign csrbank4_txfull_w = uart_txfull_status;
assign csrbank4_rxempty_w = uart_rxempty_status;
assign uart_storage = uart_storage_full[1:0];
assign csrbank4_ev_enable0_w = uart_storage_full[1:0];
assign csrbank5_sel = (interface5_bank_bus_adr[13:9] == 2'd2);
assign csrbank5_tuning_word3_r = interface5_bank_bus_dat_w[7:0];
assign csrbank5_tuning_word3_re = ((csrbank5_sel & interface5_bank_bus_we) & (interface5_bank_bus_adr[1:0] == 1'd0));
assign csrbank5_tuning_word2_r = interface5_bank_bus_dat_w[7:0];
assign csrbank5_tuning_word2_re = ((csrbank5_sel & interface5_bank_bus_we) & (interface5_bank_bus_adr[1:0] == 1'd1));
assign csrbank5_tuning_word1_r = interface5_bank_bus_dat_w[7:0];
assign csrbank5_tuning_word1_re = ((csrbank5_sel & interface5_bank_bus_we) & (interface5_bank_bus_adr[1:0] == 2'd2));
assign csrbank5_tuning_word0_r = interface5_bank_bus_dat_w[7:0];
assign csrbank5_tuning_word0_re = ((csrbank5_sel & interface5_bank_bus_we) & (interface5_bank_bus_adr[1:0] == 2'd3));
assign uart_phy_storage = uart_phy_storage_full[31:0];
assign csrbank5_tuning_word3_w = uart_phy_storage_full[31:24];
assign csrbank5_tuning_word2_w = uart_phy_storage_full[23:16];
assign csrbank5_tuning_word1_w = uart_phy_storage_full[15:8];
assign csrbank5_tuning_word0_w = uart_phy_storage_full[7:0];
assign interface0_bank_bus_adr = interface_adr;
assign interface1_bank_bus_adr = interface_adr;
assign interface2_bank_bus_adr = interface_adr;
assign interface3_bank_bus_adr = interface_adr;
assign interface4_bank_bus_adr = interface_adr;
assign interface5_bank_bus_adr = interface_adr;
assign sram_bus_adr1 = interface_adr;
assign interface0_bank_bus_we = interface_we;
assign interface1_bank_bus_we = interface_we;
assign interface2_bank_bus_we = interface_we;
assign interface3_bank_bus_we = interface_we;
assign interface4_bank_bus_we = interface_we;
assign interface5_bank_bus_we = interface_we;
assign sram_bus_we1 = interface_we;
assign interface0_bank_bus_dat_w = interface_dat_w;
assign interface1_bank_bus_dat_w = interface_dat_w;
assign interface2_bank_bus_dat_w = interface_dat_w;
assign interface3_bank_bus_dat_w = interface_dat_w;
assign interface4_bank_bus_dat_w = interface_dat_w;
assign interface5_bank_bus_dat_w = interface_dat_w;
assign sram_bus_dat_w1 = interface_dat_w;
assign interface_dat_r = ((((((interface0_bank_bus_dat_r | interface1_bank_bus_dat_r) | interface2_bank_bus_dat_r) | interface3_bank_bus_dat_r) | interface4_bank_bus_dat_r) | interface5_bank_bus_dat_r) | sram_bus_dat_r1);
always @(*) begin
	array_muxed0 <= 30'd0;
	case (grant)
		1'd0: begin
			array_muxed0 <= lm32_ibus_adr;
		end
		default: begin
			array_muxed0 <= lm32_dbus_adr;
		end
	endcase
end
always @(*) begin
	array_muxed1 <= 32'd0;
	case (grant)
		1'd0: begin
			array_muxed1 <= lm32_ibus_dat_w;
		end
		default: begin
			array_muxed1 <= lm32_dbus_dat_w;
		end
	endcase
end
always @(*) begin
	array_muxed2 <= 4'd0;
	case (grant)
		1'd0: begin
			array_muxed2 <= lm32_ibus_sel;
		end
		default: begin
			array_muxed2 <= lm32_dbus_sel;
		end
	endcase
end
always @(*) begin
	array_muxed3 <= 1'd0;
	case (grant)
		1'd0: begin
			array_muxed3 <= lm32_ibus_cyc;
		end
		default: begin
			array_muxed3 <= lm32_dbus_cyc;
		end
	endcase
end
always @(*) begin
	array_muxed4 <= 1'd0;
	case (grant)
		1'd0: begin
			array_muxed4 <= lm32_ibus_stb;
		end
		default: begin
			array_muxed4 <= lm32_dbus_stb;
		end
	endcase
end
always @(*) begin
	array_muxed5 <= 1'd0;
	case (grant)
		1'd0: begin
			array_muxed5 <= lm32_ibus_we;
		end
		default: begin
			array_muxed5 <= lm32_dbus_we;
		end
	endcase
end
always @(*) begin
	array_muxed6 <= 3'd0;
	case (grant)
		1'd0: begin
			array_muxed6 <= lm32_ibus_cti;
		end
		default: begin
			array_muxed6 <= lm32_dbus_cti;
		end
	endcase
end
always @(*) begin
	array_muxed7 <= 2'd0;
	case (grant)
		1'd0: begin
			array_muxed7 <= lm32_ibus_bte;
		end
		default: begin
			array_muxed7 <= lm32_dbus_bte;
		end
	endcase
end
assign uart_phy_rx = xilinxmultiregimpl0_regs1;
assign xilinxasyncresetsynchronizerimpl0 = ((~pll_locked) | (~cpu_reset));
assign xilinxasyncresetsynchronizerimpl1 = ((~pll_locked) | (~cpu_reset));
assign xilinxasyncresetsynchronizerimpl2 = ((~pll_locked) | (~cpu_reset));
assign xilinxasyncresetsynchronizerimpl3 = ((~pll_locked) | (~cpu_reset));
assign switches_status = xilinxmultiregimpl1_regs1;

always @(posedge clk200_clk) begin
	if ((reset_counter != 1'd0)) begin
		reset_counter <= (reset_counter - 1'd1);
	end else begin
		ic_reset <= 1'd0;
	end
	if (clk200_rst) begin
		reset_counter <= 4'd15;
		ic_reset <= 1'd1;
	end
end

always @(posedge sys_clk) begin
	if ((ctrl_bus_errors != 32'd4294967295)) begin
		if (ctrl_bus_error) begin
			ctrl_bus_errors <= (ctrl_bus_errors + 1'd1);
		end
	end
	rom_bus_ack <= 1'd0;
	if (((rom_bus_cyc & rom_bus_stb) & (~rom_bus_ack))) begin
		rom_bus_ack <= 1'd1;
	end
	sram_bus_ack <= 1'd0;
	if (((sram_bus_cyc & sram_bus_stb) & (~sram_bus_ack))) begin
		sram_bus_ack <= 1'd1;
	end
	interface_we <= 1'd0;
	interface_dat_w <= bus_wishbone_dat_w;
	interface_adr <= bus_wishbone_adr;
	bus_wishbone_dat_r <= interface_dat_r;
	if ((counter == 1'd1)) begin
		interface_we <= bus_wishbone_we;
	end
	if ((counter == 2'd2)) begin
		bus_wishbone_ack <= 1'd1;
	end
	if ((counter == 2'd3)) begin
		bus_wishbone_ack <= 1'd0;
	end
	if ((counter != 1'd0)) begin
		counter <= (counter + 1'd1);
	end else begin
		if ((bus_wishbone_cyc & bus_wishbone_stb)) begin
			counter <= 1'd1;
		end
	end
	uart_phy_sink_ready <= 1'd0;
	if (((uart_phy_sink_valid & (~uart_phy_tx_busy)) & (~uart_phy_sink_ready))) begin
		uart_phy_tx_reg <= uart_phy_sink_payload_data;
		uart_phy_tx_bitcount <= 1'd0;
		uart_phy_tx_busy <= 1'd1;
		serial_tx <= 1'd0;
	end else begin
		if ((uart_phy_uart_clk_txen & uart_phy_tx_busy)) begin
			uart_phy_tx_bitcount <= (uart_phy_tx_bitcount + 1'd1);
			if ((uart_phy_tx_bitcount == 4'd8)) begin
				serial_tx <= 1'd1;
			end else begin
				if ((uart_phy_tx_bitcount == 4'd9)) begin
					serial_tx <= 1'd1;
					uart_phy_tx_busy <= 1'd0;
					uart_phy_sink_ready <= 1'd1;
				end else begin
					serial_tx <= uart_phy_tx_reg[0];
					uart_phy_tx_reg <= {1'd0, uart_phy_tx_reg[7:1]};
				end
			end
		end
	end
	if (uart_phy_tx_busy) begin
		{uart_phy_uart_clk_txen, uart_phy_phase_accumulator_tx} <= (uart_phy_phase_accumulator_tx + uart_phy_storage);
	end else begin
		{uart_phy_uart_clk_txen, uart_phy_phase_accumulator_tx} <= 1'd0;
	end
	uart_phy_source_valid <= 1'd0;
	uart_phy_rx_r <= uart_phy_rx;
	if ((~uart_phy_rx_busy)) begin
		if (((~uart_phy_rx) & uart_phy_rx_r)) begin
			uart_phy_rx_busy <= 1'd1;
			uart_phy_rx_bitcount <= 1'd0;
		end
	end else begin
		if (uart_phy_uart_clk_rxen) begin
			uart_phy_rx_bitcount <= (uart_phy_rx_bitcount + 1'd1);
			if ((uart_phy_rx_bitcount == 1'd0)) begin
				if (uart_phy_rx) begin
					uart_phy_rx_busy <= 1'd0;
				end
			end else begin
				if ((uart_phy_rx_bitcount == 4'd9)) begin
					uart_phy_rx_busy <= 1'd0;
					if (uart_phy_rx) begin
						uart_phy_source_payload_data <= uart_phy_rx_reg;
						uart_phy_source_valid <= 1'd1;
					end
				end else begin
					uart_phy_rx_reg <= {uart_phy_rx, uart_phy_rx_reg[7:1]};
				end
			end
		end
	end
	if (uart_phy_rx_busy) begin
		{uart_phy_uart_clk_rxen, uart_phy_phase_accumulator_rx} <= (uart_phy_phase_accumulator_rx + uart_phy_storage);
	end else begin
		{uart_phy_uart_clk_rxen, uart_phy_phase_accumulator_rx} <= 32'd2147483648;
	end
	if (uart_tx_clear) begin
		uart_tx_pending <= 1'd0;
	end
	uart_tx_old_trigger <= uart_tx_trigger;
	if (((~uart_tx_trigger) & uart_tx_old_trigger)) begin
		uart_tx_pending <= 1'd1;
	end
	if (uart_rx_clear) begin
		uart_rx_pending <= 1'd0;
	end
	uart_rx_old_trigger <= uart_rx_trigger;
	if (((~uart_rx_trigger) & uart_rx_old_trigger)) begin
		uart_rx_pending <= 1'd1;
	end
	if (((uart_tx_fifo_syncfifo_we & uart_tx_fifo_syncfifo_writable) & (~uart_tx_fifo_replace))) begin
		uart_tx_fifo_produce <= (uart_tx_fifo_produce + 1'd1);
	end
	if (uart_tx_fifo_do_read) begin
		uart_tx_fifo_consume <= (uart_tx_fifo_consume + 1'd1);
	end
	if (((uart_tx_fifo_syncfifo_we & uart_tx_fifo_syncfifo_writable) & (~uart_tx_fifo_replace))) begin
		if ((~uart_tx_fifo_do_read)) begin
			uart_tx_fifo_level <= (uart_tx_fifo_level + 1'd1);
		end
	end else begin
		if (uart_tx_fifo_do_read) begin
			uart_tx_fifo_level <= (uart_tx_fifo_level - 1'd1);
		end
	end
	if (((uart_rx_fifo_syncfifo_we & uart_rx_fifo_syncfifo_writable) & (~uart_rx_fifo_replace))) begin
		uart_rx_fifo_produce <= (uart_rx_fifo_produce + 1'd1);
	end
	if (uart_rx_fifo_do_read) begin
		uart_rx_fifo_consume <= (uart_rx_fifo_consume + 1'd1);
	end
	if (((uart_rx_fifo_syncfifo_we & uart_rx_fifo_syncfifo_writable) & (~uart_rx_fifo_replace))) begin
		if ((~uart_rx_fifo_do_read)) begin
			uart_rx_fifo_level <= (uart_rx_fifo_level + 1'd1);
		end
	end else begin
		if (uart_rx_fifo_do_read) begin
			uart_rx_fifo_level <= (uart_rx_fifo_level - 1'd1);
		end
	end
	if (uart_reset) begin
		uart_tx_pending <= 1'd0;
		uart_tx_old_trigger <= 1'd0;
		uart_rx_pending <= 1'd0;
		uart_rx_old_trigger <= 1'd0;
		uart_tx_fifo_level <= 5'd0;
		uart_tx_fifo_produce <= 4'd0;
		uart_tx_fifo_consume <= 4'd0;
		uart_rx_fifo_level <= 5'd0;
		uart_rx_fifo_produce <= 4'd0;
		uart_rx_fifo_consume <= 4'd0;
	end
	if (timer0_en_storage) begin
		if ((timer0_value == 1'd0)) begin
			timer0_value <= timer0_reload_storage;
		end else begin
			timer0_value <= (timer0_value - 1'd1);
		end
	end else begin
		timer0_value <= timer0_load_storage;
	end
	if (timer0_update_value_re) begin
		timer0_value_status <= timer0_value;
	end
	if (timer0_zero_clear) begin
		timer0_zero_pending <= 1'd0;
	end
	timer0_zero_old_trigger <= timer0_zero_trigger;
	if (((~timer0_zero_trigger) & timer0_zero_old_trigger)) begin
		timer0_zero_pending <= 1'd1;
	end
	if ((dna_cnt < 7'd114)) begin
		dna_cnt <= (dna_cnt + 1'd1);
		if (dna_cnt[0]) begin
			dna_status <= {dna_status, dna_do};
		end
	end
	if (drdy) begin
		case (channel)
			1'd0: begin
				temperature_status <= (data >>> 3'd4);
			end
			1'd1: begin
				vccint_status <= (data >>> 3'd4);
			end
			2'd2: begin
				vccaux_status <= (data >>> 3'd4);
			end
			3'd6: begin
				vccbram_status <= (data >>> 3'd4);
			end
		endcase
	end
	if (eventsourceprocess0_clear) begin
		eventsourceprocess0_pending <= 1'd0;
	end
	eventsourceprocess0_old_trigger <= eventsourceprocess0_trigger;
	if (((~eventsourceprocess0_trigger) & eventsourceprocess0_old_trigger)) begin
		eventsourceprocess0_pending <= 1'd1;
	end
	if (eventsourceprocess1_clear) begin
		eventsourceprocess1_pending <= 1'd0;
	end
	eventsourceprocess1_old_trigger <= eventsourceprocess1_trigger;
	if (((~eventsourceprocess1_trigger) & eventsourceprocess1_old_trigger)) begin
		eventsourceprocess1_pending <= 1'd1;
	end
	if (eventsourceprocess2_clear) begin
		eventsourceprocess2_pending <= 1'd0;
	end
	eventsourceprocess2_old_trigger <= eventsourceprocess2_trigger;
	if (((~eventsourceprocess2_trigger) & eventsourceprocess2_old_trigger)) begin
		eventsourceprocess2_pending <= 1'd1;
	end
	if (eventsourceprocess3_clear) begin
		eventsourceprocess3_pending <= 1'd0;
	end
	eventsourceprocess3_old_trigger <= eventsourceprocess3_trigger;
	if (((~eventsourceprocess3_trigger) & eventsourceprocess3_old_trigger)) begin
		eventsourceprocess3_pending <= 1'd1;
	end
	if (waittimer0_wait) begin
		if ((~waittimer0_done)) begin
			waittimer0_count <= (waittimer0_count - 1'd1);
		end
	end else begin
		waittimer0_count <= 20'd1000000;
	end
	if (waittimer1_wait) begin
		if ((~waittimer1_done)) begin
			waittimer1_count <= (waittimer1_count - 1'd1);
		end
	end else begin
		waittimer1_count <= 20'd1000000;
	end
	if (waittimer2_wait) begin
		if ((~waittimer2_done)) begin
			waittimer2_count <= (waittimer2_count - 1'd1);
		end
	end else begin
		waittimer2_count <= 20'd1000000;
	end
	if (waittimer3_wait) begin
		if ((~waittimer3_done)) begin
			waittimer3_count <= (waittimer3_count - 1'd1);
		end
	end else begin
		waittimer3_count <= 20'd1000000;
	end
	case (grant)
		1'd0: begin
			if ((~request[0])) begin
				if (request[1]) begin
					grant <= 1'd1;
				end
			end
		end
		1'd1: begin
			if ((~request[1])) begin
				if (request[0]) begin
					grant <= 1'd0;
				end
			end
		end
	endcase
	slave_sel_r <= slave_sel;
	if (wait_1) begin
		if ((~done)) begin
			count <= (count - 1'd1);
		end
	end else begin
		count <= 17'd65536;
	end
	interface0_bank_bus_dat_r <= 1'd0;
	if (csrbank0_sel) begin
		case (interface0_bank_bus_adr[2:0])
			1'd0: begin
				interface0_bank_bus_dat_r <= csrbank0_leds_out0_w;
			end
			1'd1: begin
				interface0_bank_bus_dat_r <= csrbank0_switches_in_w;
			end
			2'd2: begin
				interface0_bank_bus_dat_r <= eventmanager_status_w;
			end
			2'd3: begin
				interface0_bank_bus_dat_r <= eventmanager_pending_w;
			end
			3'd4: begin
				interface0_bank_bus_dat_r <= csrbank0_buttons_ev_enable0_w;
			end
		endcase
	end
	if (csrbank0_leds_out0_re) begin
		leds_storage_full[3:0] <= csrbank0_leds_out0_r;
	end
	leds_re <= csrbank0_leds_out0_re;
	if (csrbank0_buttons_ev_enable0_re) begin
		eventmanager_storage_full[3:0] <= csrbank0_buttons_ev_enable0_r;
	end
	eventmanager_re <= csrbank0_buttons_ev_enable0_re;
	interface1_bank_bus_dat_r <= 1'd0;
	if (csrbank1_sel) begin
		case (interface1_bank_bus_adr[3:0])
			1'd0: begin
				interface1_bank_bus_dat_r <= ctrl_reset_reset_w;
			end
			1'd1: begin
				interface1_bank_bus_dat_r <= csrbank1_scratch3_w;
			end
			2'd2: begin
				interface1_bank_bus_dat_r <= csrbank1_scratch2_w;
			end
			2'd3: begin
				interface1_bank_bus_dat_r <= csrbank1_scratch1_w;
			end
			3'd4: begin
				interface1_bank_bus_dat_r <= csrbank1_scratch0_w;
			end
			3'd5: begin
				interface1_bank_bus_dat_r <= csrbank1_bus_errors3_w;
			end
			3'd6: begin
				interface1_bank_bus_dat_r <= csrbank1_bus_errors2_w;
			end
			3'd7: begin
				interface1_bank_bus_dat_r <= csrbank1_bus_errors1_w;
			end
			4'd8: begin
				interface1_bank_bus_dat_r <= csrbank1_bus_errors0_w;
			end
		endcase
	end
	if (csrbank1_scratch3_re) begin
		ctrl_storage_full[31:24] <= csrbank1_scratch3_r;
	end
	if (csrbank1_scratch2_re) begin
		ctrl_storage_full[23:16] <= csrbank1_scratch2_r;
	end
	if (csrbank1_scratch1_re) begin
		ctrl_storage_full[15:8] <= csrbank1_scratch1_r;
	end
	if (csrbank1_scratch0_re) begin
		ctrl_storage_full[7:0] <= csrbank1_scratch0_r;
	end
	ctrl_re <= csrbank1_scratch0_re;
	sel_r <= sel;
	interface2_bank_bus_dat_r <= 1'd0;
	if (csrbank2_sel) begin
		case (interface2_bank_bus_adr[5:0])
			1'd0: begin
				interface2_bank_bus_dat_r <= csrbank2_dna_id7_w;
			end
			1'd1: begin
				interface2_bank_bus_dat_r <= csrbank2_dna_id6_w;
			end
			2'd2: begin
				interface2_bank_bus_dat_r <= csrbank2_dna_id5_w;
			end
			2'd3: begin
				interface2_bank_bus_dat_r <= csrbank2_dna_id4_w;
			end
			3'd4: begin
				interface2_bank_bus_dat_r <= csrbank2_dna_id3_w;
			end
			3'd5: begin
				interface2_bank_bus_dat_r <= csrbank2_dna_id2_w;
			end
			3'd6: begin
				interface2_bank_bus_dat_r <= csrbank2_dna_id1_w;
			end
			3'd7: begin
				interface2_bank_bus_dat_r <= csrbank2_dna_id0_w;
			end
			4'd8: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit19_w;
			end
			4'd9: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit18_w;
			end
			4'd10: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit17_w;
			end
			4'd11: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit16_w;
			end
			4'd12: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit15_w;
			end
			4'd13: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit14_w;
			end
			4'd14: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit13_w;
			end
			4'd15: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit12_w;
			end
			5'd16: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit11_w;
			end
			5'd17: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit10_w;
			end
			5'd18: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit9_w;
			end
			5'd19: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit8_w;
			end
			5'd20: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit7_w;
			end
			5'd21: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit6_w;
			end
			5'd22: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit5_w;
			end
			5'd23: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit4_w;
			end
			5'd24: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit3_w;
			end
			5'd25: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit2_w;
			end
			5'd26: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit1_w;
			end
			5'd27: begin
				interface2_bank_bus_dat_r <= csrbank2_git_commit0_w;
			end
			5'd28: begin
				interface2_bank_bus_dat_r <= csrbank2_platform_platform7_w;
			end
			5'd29: begin
				interface2_bank_bus_dat_r <= csrbank2_platform_platform6_w;
			end
			5'd30: begin
				interface2_bank_bus_dat_r <= csrbank2_platform_platform5_w;
			end
			5'd31: begin
				interface2_bank_bus_dat_r <= csrbank2_platform_platform4_w;
			end
			6'd32: begin
				interface2_bank_bus_dat_r <= csrbank2_platform_platform3_w;
			end
			6'd33: begin
				interface2_bank_bus_dat_r <= csrbank2_platform_platform2_w;
			end
			6'd34: begin
				interface2_bank_bus_dat_r <= csrbank2_platform_platform1_w;
			end
			6'd35: begin
				interface2_bank_bus_dat_r <= csrbank2_platform_platform0_w;
			end
			6'd36: begin
				interface2_bank_bus_dat_r <= csrbank2_platform_target7_w;
			end
			6'd37: begin
				interface2_bank_bus_dat_r <= csrbank2_platform_target6_w;
			end
			6'd38: begin
				interface2_bank_bus_dat_r <= csrbank2_platform_target5_w;
			end
			6'd39: begin
				interface2_bank_bus_dat_r <= csrbank2_platform_target4_w;
			end
			6'd40: begin
				interface2_bank_bus_dat_r <= csrbank2_platform_target3_w;
			end
			6'd41: begin
				interface2_bank_bus_dat_r <= csrbank2_platform_target2_w;
			end
			6'd42: begin
				interface2_bank_bus_dat_r <= csrbank2_platform_target1_w;
			end
			6'd43: begin
				interface2_bank_bus_dat_r <= csrbank2_platform_target0_w;
			end
			6'd44: begin
				interface2_bank_bus_dat_r <= csrbank2_xadc_temperature1_w;
			end
			6'd45: begin
				interface2_bank_bus_dat_r <= csrbank2_xadc_temperature0_w;
			end
			6'd46: begin
				interface2_bank_bus_dat_r <= csrbank2_xadc_vccint1_w;
			end
			6'd47: begin
				interface2_bank_bus_dat_r <= csrbank2_xadc_vccint0_w;
			end
			6'd48: begin
				interface2_bank_bus_dat_r <= csrbank2_xadc_vccaux1_w;
			end
			6'd49: begin
				interface2_bank_bus_dat_r <= csrbank2_xadc_vccaux0_w;
			end
			6'd50: begin
				interface2_bank_bus_dat_r <= csrbank2_xadc_vccbram1_w;
			end
			6'd51: begin
				interface2_bank_bus_dat_r <= csrbank2_xadc_vccbram0_w;
			end
		endcase
	end
	interface3_bank_bus_dat_r <= 1'd0;
	if (csrbank3_sel) begin
		case (interface3_bank_bus_adr[4:0])
			1'd0: begin
				interface3_bank_bus_dat_r <= csrbank3_load3_w;
			end
			1'd1: begin
				interface3_bank_bus_dat_r <= csrbank3_load2_w;
			end
			2'd2: begin
				interface3_bank_bus_dat_r <= csrbank3_load1_w;
			end
			2'd3: begin
				interface3_bank_bus_dat_r <= csrbank3_load0_w;
			end
			3'd4: begin
				interface3_bank_bus_dat_r <= csrbank3_reload3_w;
			end
			3'd5: begin
				interface3_bank_bus_dat_r <= csrbank3_reload2_w;
			end
			3'd6: begin
				interface3_bank_bus_dat_r <= csrbank3_reload1_w;
			end
			3'd7: begin
				interface3_bank_bus_dat_r <= csrbank3_reload0_w;
			end
			4'd8: begin
				interface3_bank_bus_dat_r <= csrbank3_en0_w;
			end
			4'd9: begin
				interface3_bank_bus_dat_r <= timer0_update_value_w;
			end
			4'd10: begin
				interface3_bank_bus_dat_r <= csrbank3_value3_w;
			end
			4'd11: begin
				interface3_bank_bus_dat_r <= csrbank3_value2_w;
			end
			4'd12: begin
				interface3_bank_bus_dat_r <= csrbank3_value1_w;
			end
			4'd13: begin
				interface3_bank_bus_dat_r <= csrbank3_value0_w;
			end
			4'd14: begin
				interface3_bank_bus_dat_r <= timer0_eventmanager_status_w;
			end
			4'd15: begin
				interface3_bank_bus_dat_r <= timer0_eventmanager_pending_w;
			end
			5'd16: begin
				interface3_bank_bus_dat_r <= csrbank3_ev_enable0_w;
			end
		endcase
	end
	if (csrbank3_load3_re) begin
		timer0_load_storage_full[31:24] <= csrbank3_load3_r;
	end
	if (csrbank3_load2_re) begin
		timer0_load_storage_full[23:16] <= csrbank3_load2_r;
	end
	if (csrbank3_load1_re) begin
		timer0_load_storage_full[15:8] <= csrbank3_load1_r;
	end
	if (csrbank3_load0_re) begin
		timer0_load_storage_full[7:0] <= csrbank3_load0_r;
	end
	timer0_load_re <= csrbank3_load0_re;
	if (csrbank3_reload3_re) begin
		timer0_reload_storage_full[31:24] <= csrbank3_reload3_r;
	end
	if (csrbank3_reload2_re) begin
		timer0_reload_storage_full[23:16] <= csrbank3_reload2_r;
	end
	if (csrbank3_reload1_re) begin
		timer0_reload_storage_full[15:8] <= csrbank3_reload1_r;
	end
	if (csrbank3_reload0_re) begin
		timer0_reload_storage_full[7:0] <= csrbank3_reload0_r;
	end
	timer0_reload_re <= csrbank3_reload0_re;
	if (csrbank3_en0_re) begin
		timer0_en_storage_full <= csrbank3_en0_r;
	end
	timer0_en_re <= csrbank3_en0_re;
	if (csrbank3_ev_enable0_re) begin
		timer0_eventmanager_storage_full <= csrbank3_ev_enable0_r;
	end
	timer0_eventmanager_re <= csrbank3_ev_enable0_re;
	interface4_bank_bus_dat_r <= 1'd0;
	if (csrbank4_sel) begin
		case (interface4_bank_bus_adr[2:0])
			1'd0: begin
				interface4_bank_bus_dat_r <= uart_rxtx_w;
			end
			1'd1: begin
				interface4_bank_bus_dat_r <= csrbank4_txfull_w;
			end
			2'd2: begin
				interface4_bank_bus_dat_r <= csrbank4_rxempty_w;
			end
			2'd3: begin
				interface4_bank_bus_dat_r <= uart_status_w;
			end
			3'd4: begin
				interface4_bank_bus_dat_r <= uart_pending_w;
			end
			3'd5: begin
				interface4_bank_bus_dat_r <= csrbank4_ev_enable0_w;
			end
		endcase
	end
	if (csrbank4_ev_enable0_re) begin
		uart_storage_full[1:0] <= csrbank4_ev_enable0_r;
	end
	uart_re <= csrbank4_ev_enable0_re;
	interface5_bank_bus_dat_r <= 1'd0;
	if (csrbank5_sel) begin
		case (interface5_bank_bus_adr[1:0])
			1'd0: begin
				interface5_bank_bus_dat_r <= csrbank5_tuning_word3_w;
			end
			1'd1: begin
				interface5_bank_bus_dat_r <= csrbank5_tuning_word2_w;
			end
			2'd2: begin
				interface5_bank_bus_dat_r <= csrbank5_tuning_word1_w;
			end
			2'd3: begin
				interface5_bank_bus_dat_r <= csrbank5_tuning_word0_w;
			end
		endcase
	end
	if (csrbank5_tuning_word3_re) begin
		uart_phy_storage_full[31:24] <= csrbank5_tuning_word3_r;
	end
	if (csrbank5_tuning_word2_re) begin
		uart_phy_storage_full[23:16] <= csrbank5_tuning_word2_r;
	end
	if (csrbank5_tuning_word1_re) begin
		uart_phy_storage_full[15:8] <= csrbank5_tuning_word1_r;
	end
	if (csrbank5_tuning_word0_re) begin
		uart_phy_storage_full[7:0] <= csrbank5_tuning_word0_r;
	end
	uart_phy_re <= csrbank5_tuning_word0_re;
	if (sys_rst) begin
		ctrl_storage_full <= 32'd305419896;
		ctrl_re <= 1'd0;
		ctrl_bus_errors <= 32'd0;
		rom_bus_ack <= 1'd0;
		sram_bus_ack <= 1'd0;
		interface_adr <= 14'd0;
		interface_we <= 1'd0;
		interface_dat_w <= 8'd0;
		bus_wishbone_dat_r <= 32'd0;
		bus_wishbone_ack <= 1'd0;
		counter <= 2'd0;
		serial_tx <= 1'd1;
		uart_phy_storage_full <= 32'd4947802;
		uart_phy_re <= 1'd0;
		uart_phy_sink_ready <= 1'd0;
		uart_phy_uart_clk_txen <= 1'd0;
		uart_phy_phase_accumulator_tx <= 32'd0;
		uart_phy_tx_reg <= 8'd0;
		uart_phy_tx_bitcount <= 4'd0;
		uart_phy_tx_busy <= 1'd0;
		uart_phy_source_valid <= 1'd0;
		uart_phy_source_payload_data <= 8'd0;
		uart_phy_uart_clk_rxen <= 1'd0;
		uart_phy_phase_accumulator_rx <= 32'd0;
		uart_phy_rx_r <= 1'd0;
		uart_phy_rx_reg <= 8'd0;
		uart_phy_rx_bitcount <= 4'd0;
		uart_phy_rx_busy <= 1'd0;
		uart_tx_pending <= 1'd0;
		uart_tx_old_trigger <= 1'd0;
		uart_rx_pending <= 1'd0;
		uart_rx_old_trigger <= 1'd0;
		uart_storage_full <= 2'd0;
		uart_re <= 1'd0;
		uart_tx_fifo_level <= 5'd0;
		uart_tx_fifo_produce <= 4'd0;
		uart_tx_fifo_consume <= 4'd0;
		uart_rx_fifo_level <= 5'd0;
		uart_rx_fifo_produce <= 4'd0;
		uart_rx_fifo_consume <= 4'd0;
		timer0_load_storage_full <= 32'd0;
		timer0_load_re <= 1'd0;
		timer0_reload_storage_full <= 32'd0;
		timer0_reload_re <= 1'd0;
		timer0_en_storage_full <= 1'd0;
		timer0_en_re <= 1'd0;
		timer0_value_status <= 32'd0;
		timer0_zero_pending <= 1'd0;
		timer0_zero_old_trigger <= 1'd0;
		timer0_eventmanager_storage_full <= 1'd0;
		timer0_eventmanager_re <= 1'd0;
		timer0_value <= 32'd0;
		dna_status <= 57'd0;
		dna_cnt <= 7'd0;
		temperature_status <= 12'd0;
		vccint_status <= 12'd0;
		vccaux_status <= 12'd0;
		vccbram_status <= 12'd0;
		leds_storage_full <= 4'd0;
		leds_re <= 1'd0;
		eventsourceprocess0_pending <= 1'd0;
		eventsourceprocess0_old_trigger <= 1'd0;
		waittimer0_count <= 20'd1000000;
		eventsourceprocess1_pending <= 1'd0;
		eventsourceprocess1_old_trigger <= 1'd0;
		waittimer1_count <= 20'd1000000;
		eventsourceprocess2_pending <= 1'd0;
		eventsourceprocess2_old_trigger <= 1'd0;
		waittimer2_count <= 20'd1000000;
		eventsourceprocess3_pending <= 1'd0;
		eventsourceprocess3_old_trigger <= 1'd0;
		waittimer3_count <= 20'd1000000;
		eventmanager_storage_full <= 4'd0;
		eventmanager_re <= 1'd0;
		grant <= 1'd0;
		slave_sel_r <= 3'd0;
		count <= 17'd65536;
		interface0_bank_bus_dat_r <= 8'd0;
		interface1_bank_bus_dat_r <= 8'd0;
		sel_r <= 1'd0;
		interface2_bank_bus_dat_r <= 8'd0;
		interface3_bank_bus_dat_r <= 8'd0;
		interface4_bank_bus_dat_r <= 8'd0;
		interface5_bank_bus_dat_r <= 8'd0;
	end
	xilinxmultiregimpl0_regs0 <= serial_rx;
	xilinxmultiregimpl0_regs1 <= xilinxmultiregimpl0_regs0;
	xilinxmultiregimpl1_regs0 <= switches;
	xilinxmultiregimpl1_regs1 <= xilinxmultiregimpl1_regs0;
end

lm32_cpu #(
	.eba_reset(32'h00000000)
) lm32_cpu (
	.D_ACK_I(lm32_dbus_ack),
	.D_DAT_I(lm32_dbus_dat_r),
	.D_ERR_I(lm32_dbus_err),
	.D_RTY_I(1'd0),
	.I_ACK_I(lm32_ibus_ack),
	.I_DAT_I(lm32_ibus_dat_r),
	.I_ERR_I(lm32_ibus_err),
	.I_RTY_I(1'd0),
	.clk_i(sys_clk),
	.interrupt(lm32_interrupt),
	.rst_i((sys_rst | lm32_reset)),
	.D_ADR_O(lm32_d_adr_o),
	.D_BTE_O(lm32_dbus_bte),
	.D_CTI_O(lm32_dbus_cti),
	.D_CYC_O(lm32_dbus_cyc),
	.D_DAT_O(lm32_dbus_dat_w),
	.D_SEL_O(lm32_dbus_sel),
	.D_STB_O(lm32_dbus_stb),
	.D_WE_O(lm32_dbus_we),
	.I_ADR_O(lm32_i_adr_o),
	.I_BTE_O(lm32_ibus_bte),
	.I_CTI_O(lm32_ibus_cti),
	.I_CYC_O(lm32_ibus_cyc),
	.I_DAT_O(lm32_ibus_dat_w),
	.I_SEL_O(lm32_ibus_sel),
	.I_STB_O(lm32_ibus_stb),
	.I_WE_O(lm32_ibus_we)
);

reg [31:0] mem[0:8191];
reg [12:0] memadr;
always @(posedge sys_clk) begin
	memadr <= rom_adr;
end

assign rom_dat_r = mem[memadr];

initial begin
	$readmemh("mem.init", mem);
end

reg [31:0] mem_1[0:8191];
reg [12:0] memadr_1;
always @(posedge sys_clk) begin
	if (sram_we[0])
		mem_1[sram_adr][7:0] <= sram_dat_w[7:0];
	if (sram_we[1])
		mem_1[sram_adr][15:8] <= sram_dat_w[15:8];
	if (sram_we[2])
		mem_1[sram_adr][23:16] <= sram_dat_w[23:16];
	if (sram_we[3])
		mem_1[sram_adr][31:24] <= sram_dat_w[31:24];
	memadr_1 <= sram_adr;
end

assign sram_dat_r = mem_1[memadr_1];

reg [9:0] storage[0:15];
reg [9:0] memdat;
always @(posedge sys_clk) begin
	if (uart_tx_fifo_wrport_we)
		storage[uart_tx_fifo_wrport_adr] <= uart_tx_fifo_wrport_dat_w;
	memdat <= storage[uart_tx_fifo_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign uart_tx_fifo_wrport_dat_r = memdat;
assign uart_tx_fifo_rdport_dat_r = storage[uart_tx_fifo_rdport_adr];

reg [9:0] storage_1[0:15];
reg [9:0] memdat_1;
always @(posedge sys_clk) begin
	if (uart_rx_fifo_wrport_we)
		storage_1[uart_rx_fifo_wrport_adr] <= uart_rx_fifo_wrport_dat_w;
	memdat_1 <= storage_1[uart_rx_fifo_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign uart_rx_fifo_wrport_dat_r = memdat_1;
assign uart_rx_fifo_rdport_dat_r = storage_1[uart_rx_fifo_rdport_adr];

reg [7:0] mem_2[0:6];
reg [2:0] memadr_2;
always @(posedge sys_clk) begin
	memadr_2 <= adr;
end

assign dat_r = mem_2[memadr_2];

initial begin
	$readmemh("mem_2.init", mem_2);
end

PLLE2_BASE #(
	.CLKFBOUT_MULT(5'd16),
	.CLKIN1_PERIOD(10.0),
	.CLKOUT0_DIVIDE(5'd16),
	.CLKOUT0_PHASE(0.0),
	.CLKOUT3_DIVIDE(4'd8),
	.CLKOUT3_PHASE(0.0),
	.CLKOUT4_DIVIDE(6'd32),
	.CLKOUT4_PHASE(0.0),
	.CLKOUT5_DIVIDE(5'd16),
	.CLKOUT5_PHASE(0.0),
	.DIVCLK_DIVIDE(1'd1),
	.REF_JITTER1(0.01),
	.STARTUP_WAIT("FALSE")
) PLLE2_BASE (
	.CLKFBIN(pll_fb),
	.CLKIN1(clk100),
	.CLKFBOUT(pll_fb),
	.CLKOUT0(pll_sys),
	.CLKOUT3(pll_clk200),
	.CLKOUT4(pll_clk50),
	.CLKOUT5(pll_clk100),
	.LOCKED(pll_locked)
);

BUFG BUFG(
	.I(pll_sys),
	.O(sys_clk)
);

BUFG BUFG_1(
	.I(pll_clk200),
	.O(clk200_clk)
);

BUFG BUFG_2(
	.I(pll_clk100),
	.O(clk100_clk)
);

BUFG BUFG_3(
	.I(pll_clk50),
	.O(clk50_clk)
);

DNA_PORT DNA_PORT(
	.CLK(dna_cnt[0]),
	.DIN(dna_status[56]),
	.READ((dna_cnt < 2'd2)),
	.SHIFT(1'd1),
	.DOUT(dna_do)
);

XADC #(
	.INIT_40(16'd36864),
	.INIT_41(14'd12016),
	.INIT_42(11'd1024),
	.INIT_48(15'd18177),
	.INIT_49(4'd15),
	.INIT_4A(15'd18176),
	.INIT_4B(1'd0),
	.INIT_4C(1'd0),
	.INIT_4D(1'd0),
	.INIT_4E(1'd0),
	.INIT_4F(1'd0),
	.INIT_50(16'd46573),
	.INIT_51(15'd22937),
	.INIT_52(16'd41287),
	.INIT_53(16'd56797),
	.INIT_54(16'd43322),
	.INIT_55(15'd20753),
	.INIT_56(16'd37355),
	.INIT_57(16'd44622),
	.INIT_58(15'd22937),
	.INIT_5C(15'd20753)
) XADC (
	.CONVST(1'd0),
	.CONVSTCLK(1'd0),
	.DADDR(channel),
	.DCLK(sys_clk),
	.DEN(eoc),
	.DI(1'd0),
	.DWE(1'd0),
	.RESET(sys_rst),
	.VAUXN(1'd0),
	.VAUXP(1'd1),
	.VN(1'd0),
	.VP(1'd1),
	.ALM(alarm),
	.BUSY(busy),
	.CHANNEL(channel),
	.DO(data),
	.DRDY(drdy),
	.EOC(eoc),
	.EOS(eos),
	.OT(ot)
);

(* ars_ff1 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE (
	.C(sys_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(xilinxasyncresetsynchronizerimpl0),
	.Q(xilinxasyncresetsynchronizerimpl0_rst_meta)
);

(* ars_ff2 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_1 (
	.C(sys_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl0_rst_meta),
	.PRE(xilinxasyncresetsynchronizerimpl0),
	.Q(sys_rst)
);

(* ars_ff1 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_2 (
	.C(clk200_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(xilinxasyncresetsynchronizerimpl1),
	.Q(xilinxasyncresetsynchronizerimpl1_rst_meta)
);

(* ars_ff2 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_3 (
	.C(clk200_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl1_rst_meta),
	.PRE(xilinxasyncresetsynchronizerimpl1),
	.Q(clk200_rst)
);

(* ars_ff1 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_4 (
	.C(clk100_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(xilinxasyncresetsynchronizerimpl2),
	.Q(xilinxasyncresetsynchronizerimpl2_rst_meta)
);

(* ars_ff2 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_5 (
	.C(clk100_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl2_rst_meta),
	.PRE(xilinxasyncresetsynchronizerimpl2),
	.Q(clk100_rst)
);

(* ars_ff1 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_6 (
	.C(clk50_clk),
	.CE(1'd1),
	.D(1'd0),
	.PRE(xilinxasyncresetsynchronizerimpl3),
	.Q(xilinxasyncresetsynchronizerimpl3_rst_meta)
);

(* ars_ff2 = "true", async_reg = "true" *) FDPE #(
	.INIT(1'd1)
) FDPE_7 (
	.C(clk50_clk),
	.CE(1'd1),
	.D(xilinxasyncresetsynchronizerimpl3_rst_meta),
	.PRE(xilinxasyncresetsynchronizerimpl3),
	.Q(clk50_rst)
);

endmodule
