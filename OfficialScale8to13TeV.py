#
# scale factors 8 -> 13 TeV
#
#
# for the signal from:
#   https://ceballos.web.cern.ch/ceballos/mcfm/xsec_several_ecm_MCFM66.txt
#

scaleFactor.update({'ggH'  :  2.96933/1.28032    })
scaleFactor.update({'qqH'  :  2.59943/1.24261    })
scaleFactor.update({'WH'   :  2.27096/1.20447    })
scaleFactor.update({'ZH'   :  2.44912/1.22665    })


scaleFactor.update({'DYee' :  1.710})
scaleFactor.update({'DYmm' :  1.710})
scaleFactor.update({'DYTT' :  1.710})
scaleFactor.update({'Zjets':  1.710})
scaleFactor.update({'Ztt'  :  1.710})

scaleFactor.update({'WJet'  :  1.676})
scaleFactor.update({'WjetsE':  1.676})
scaleFactor.update({'WjetsM':  1.676})
scaleFactor.update({'Wjets' :  1.676})

scaleFactor.update({'ggWW'  :  2.342})
scaleFactor.update({'qqWW'  :  2.342})
scaleFactor.update({'WW'    :  2.342})
scaleFactor.update({'WWewk' :  2.342})
scaleFactor.update({'qqWW2j':  2.342})
scaleFactor.update({'VV'    :  1.991})   #WZ

scaleFactor.update({'WZ'   :  1.991})
scaleFactor.update({'ZZ'   :  1.869})

scaleFactor.update({'Top'  :  3.307})
scaleFactor.update({'tW'   :  3.490})


scaleFactor.update({'VVV'   : 2.500})

scaleFactor.update({'Wgamma': 1.705})
scaleFactor.update({'Vg'   : 1.705})
scaleFactor.update({'VgS'  : 1.991})
scaleFactor.update({'Wg3l' : 1.991})




scaleFactor.update({'DYee05' :  1.710}) # for WWewk
scaleFactor.update({'DYmm05' :  1.710}) # for WWewk

scaleFactor.update({'TopPt0'  :  3.307}) # for WWewk
scaleFactor.update({'TopPt1'  :  3.307}) # for WWewk

#
# about DY>ll  :: use "worst" case scenario, biggest scale factor
#         Z(10)->ee      1.68986  /  1.12177  = 1.51
#         Z(20)->ee      1.88457  /  1.14953  = 1.68
#         Z(50)->ee      1.99168  /  1.16503  = 1.71
#