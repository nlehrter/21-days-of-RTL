// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vdff__Syms.h"


void Vdff___024root__trace_chg_0_sub_0(Vdff___024root* vlSelf, VerilatedVcd::Buffer* bufp);

void Vdff___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdff___024root__trace_chg_0\n"); );
    // Init
    Vdff___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vdff___024root*>(voidSelf);
    Vdff__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    Vdff___024root__trace_chg_0_sub_0((&vlSymsp->TOP), bufp);
}

void Vdff___024root__trace_chg_0_sub_0(Vdff___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vdff__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdff___024root__trace_chg_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode + 1);
    // Body
    bufp->chgBit(oldp+0,(vlSelf->clk));
    bufp->chgBit(oldp+1,(vlSelf->reset));
    bufp->chgBit(oldp+2,(vlSelf->d_i));
    bufp->chgBit(oldp+3,(vlSelf->q_norst_o));
    bufp->chgBit(oldp+4,(vlSelf->q_syncrst_o));
    bufp->chgBit(oldp+5,(vlSelf->q_asyncrst_o));
}

void Vdff___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vdff___024root__trace_cleanup\n"); );
    // Init
    Vdff___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vdff___024root*>(voidSelf);
    Vdff__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VlUnpacked<CData/*0:0*/, 1> __Vm_traceActivity;
    for (int __Vi0 = 0; __Vi0 < 1; ++__Vi0) {
        __Vm_traceActivity[__Vi0] = 0;
    }
    // Body
    vlSymsp->__Vm_activity = false;
    __Vm_traceActivity[0U] = 0U;
}
