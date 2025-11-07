tableextension 50006 "Routing Header Ext" extends "Routing Header"
{
    fields
    {
        field(50021; "Type of Plating"; Option)
        {
            OptionMembers = Empty,ZincPlating,AlkalineZincNickelPlating,ChlorideZincNickelPlating,ZincIronPlating,ECoating,ZincPhosphating,Cleaning,Pickle,MechanicalZincPlating,MechanicalZincTinPlating,MechanicalZincAluminumPlating,ImmersionCopperPlating;
            OptionCaption = ',Zinc plating,Alkaline zinc nickel plating,Chloride zinc nickel plating,Zinc iron plating,E-Coating,Zinc phosphating,Cleaning,Pickle,Mechanical zinc plating,Mechanical zinc tin plating,Mechanical zinc aluminum plating,Immersion copper plating';
        }

        field(50022; "Thickness (Microns)"; Option)
        {
            OptionMembers = Micron1,Micron5,Micron6,Micron8,Micron15,Micron25;
            OptionCaption = '1 micron,5 microns,6 microns,8 microns,15 microns,25 microns';
        }

        field(50033; "Passivate 2"; Option)
        {
            OptionMembers = Empty,NoPassivate,LowPerformanceClearTrivalentPassivate,StandardClearTrivalentPassivate,HighPerformanceClearTrivalentPassivate,YellowTrivalentPassivate,BlackTrivalentPassivate,YellowHexavalentChromate;
            OptionCaption = ',No passivate,Low Perfomance clear trivalent passivate,Standard clear trivalent passivate,High performance clear trivalent passivate,Yellow trivalent passivate,Black trivalent passivate,Yellow hexavalent chromate';
        }

        field(50024; "Topcoat (Seal/Lubricant)"; Option)
        {
            OptionMembers = Empty,Seal,Lubricant,SealAndLubricant,PostDipBlack,Oil,TL48Lubricant,RustInhibitor;
            OptionCaption = ',Seal,Lubricant,Seal and lubricant,Post dip (black),Oil,TL 48 lubricant,Rust inhibitor';
        }

        field(50025; "Baking required?"; Boolean)
        {
        }
    }
}
