{\rtf1\ansi\ansicpg1252\cocoartf1671\cocoasubrtf500
{\fonttbl\f0\fnil\fcharset0 HelveticaNeue;\f1\fnil\fcharset0 Consolas-Bold;\f2\fnil\fcharset0 Consolas;
}
{\colortbl;\red255\green255\blue255;\red27\green31\blue34;\red255\green255\blue255;\red10\green77\blue204;
\red21\green23\blue26;\red244\green246\blue249;\red6\green33\blue79;\red7\green68\blue184;}
{\*\expandedcolortbl;;\cssrgb\c14118\c16078\c18039;\cssrgb\c100000\c100000\c100000;\cssrgb\c1176\c40000\c83922;
\cssrgb\c10588\c12157\c13725\c4706;\cssrgb\c96471\c97255\c98039;\cssrgb\c1176\c18431\c38431;\cssrgb\c0\c36078\c77255;}
{\*\listtable{\list\listtemplateid1\listhybrid{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{disc\}}{\leveltext\leveltemplateid1\'01\uc0\u8226 ;}{\levelnumbers;}\fi-360\li720\lin720 }{\listname ;}\listid1}
{\list\listtemplateid2\listhybrid{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{disc\}}{\leveltext\leveltemplateid101\'01\uc0\u8226 ;}{\levelnumbers;}\fi-360\li720\lin720 }{\listname ;}\listid2}}
{\*\listoverridetable{\listoverride\listid1\listoverridecount0\ls1}{\listoverride\listid2\listoverridecount0\ls2}}
\margl1440\margr1440\vieww14480\viewh14080\viewkind0
\deftab720
\pard\pardeftab720\sl600\sa320\partightenfactor0

\f0\b\fs48 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Demo\
\pard\tx220\tx720\pardeftab720\li720\fi-720\sl360\partightenfactor0
\ls1\ilvl0
\b0\fs32 \cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Constructs and syntactic correctness\cb1 \
\ls1\ilvl0\cb3 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Flexibility of data model\cb1 \
\ls1\ilvl0\cb3 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 JSON Schema, validation\cb1 \
\pard\pardeftab720\sl480\partightenfactor0

\b\fs48 \cf4 \strokec4 \
\pard\pardeftab720\sl600\sa320\partightenfactor0
\cf2 \cb3 \strokec2 Example\
\pard\pardeftab720\sl360\partightenfactor0

\fs36 \cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl440\sa320\partightenfactor0
{\field{\*\fldinst{HYPERLINK "https://github.com/eddowh/coursera_intro-to-databases/blob/master/03_json-data/data/Bookstore.json"}}{\fldrslt 
\f1 \cf4 \cb5 Bookstore.json}}\cf2 \cb3 \strokec2 \
\pard\pardeftab720\sl360\sa320\partightenfactor0

\b0\fs32 \cf2 JSON data representing books and magazines\
\pard\pardeftab720\sl380\partightenfactor0

\f2\fs27\fsmilli13600 \cf2 \cb6 \{ \cf7 \strokec7 "Books"\cf2 \strokec2 :\
  [\
    \{ \cf7 \strokec7 "ISBN"\cf2 \strokec2 :\cf7 \strokec7 "ISBN-0-13-713526-2"\cf2 \strokec2 ,\
      \cf7 \strokec7 "Price"\cf2 \strokec2 :\cf8 \strokec8 85\cf2 \strokec2 ,\
      \cf7 \strokec7 "Edition"\cf2 \strokec2 :\cf8 \strokec8 3\cf2 \strokec2 ,\
      \cf7 \strokec7 "Title"\cf2 \strokec2 :\cf7 \strokec7 "A First Course in Database Systems"\cf2 \strokec2 ,\
      \cf7 \strokec7 "Authors"\cf2 \strokec2 :[ \{\cf7 \strokec7 "First_Name"\cf2 \strokec2 :\cf7 \strokec7 "Jeffrey"\cf2 \strokec2 , \cf7 \strokec7 "Last_Name"\cf2 \strokec2 :\cf7 \strokec7 "Ullman"\cf2 \strokec2 \},\
                  \{\cf7 \strokec7 "First_Name"\cf2 \strokec2 :\cf7 \strokec7 "Jennifer"\cf2 \strokec2 , \cf7 \strokec7 "Last_Name"\cf2 \strokec2 :\cf7 \strokec7 "Widom"\cf2 \strokec2 \} ] \}\
    ,\
    \{ \cf7 \strokec7 "ISBN"\cf2 \strokec2 :\cf7 \strokec7 "ISBN-0-13-815504-6"\cf2 \strokec2 ,\
      \cf7 \strokec7 "Price"\cf2 \strokec2 :\cf8 \strokec8 100\cf2 \strokec2 ,\
      \cf7 \strokec7 "Remark"\cf2 \strokec2 :\cf7 \strokec7 "Buy this book bundled with 'A First Course' - a great deal!"\cf2 \strokec2 ,\
      \cf7 \strokec7 "Title"\cf2 \strokec2 :\cf7 \strokec7 "Database Systems:The Complete Book"\cf2 \strokec2 ,\
      \cf7 \strokec7 "Authors"\cf2 \strokec2 :[ \{\cf7 \strokec7 "First_Name"\cf2 \strokec2 :\cf7 \strokec7 "Hector"\cf2 \strokec2 , \cf7 \strokec7 "Last_Name"\cf2 \strokec2 :\cf7 \strokec7 "Garcia-Molina"\cf2 \strokec2 \},\
                  \{\cf7 \strokec7 "First_Name"\cf2 \strokec2 :\cf7 \strokec7 "Jeffrey"\cf2 \strokec2 , \cf7 \strokec7 "Last_Name"\cf2 \strokec2 :\cf7 \strokec7 "Ullman"\cf2 \strokec2 \},\
                  \{\cf7 \strokec7 "First_Name"\cf2 \strokec2 :\cf7 \strokec7 "Jennifer"\cf2 \strokec2 , \cf7 \strokec7 "Last_Name"\cf2 \strokec2 :\cf7 \strokec7 "Widom"\cf2 \strokec2 \} ] \}\
  ],\
  \cf7 \strokec7 "Magazines"\cf2 \strokec2 :\
  [\
    \{ \cf7 \strokec7 "Title"\cf2 \strokec2 :\cf7 \strokec7 "National Geographic"\cf2 \strokec2 ,\
      \cf7 \strokec7 "Month"\cf2 \strokec2 :\cf7 \strokec7 "January"\cf2 \strokec2 ,\
      \cf7 \strokec7 "Year"\cf2 \strokec2 :\cf8 \strokec8 2009\cf2 \strokec2  \}\
    ,\
    \{ \cf7 \strokec7 "Title"\cf2 \strokec2 :\cf7 \strokec7 "Newsweek"\cf2 \strokec2 ,\
      \cf7 \strokec7 "Month"\cf2 \strokec2 :\cf7 \strokec7 "February"\cf2 \strokec2 ,\
      \cf7 \strokec7 "Year"\cf2 \strokec2 :\cf8 \strokec8 2009\cf2 \strokec2  \}\
  ]\
\}\
\pard\pardeftab720\sl360\partightenfactor0

\f0\b\fs36 \cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl440\sa320\partightenfactor0
{\field{\*\fldinst{HYPERLINK "https://github.com/eddowh/coursera_intro-to-databases/blob/master/03_json-data/data/BookstoreSchema.json"}}{\fldrslt 
\f1 \cf4 \cb5 BookstoreSchema.json}}\cf2 \cb3 \strokec2 \
\pard\tx220\tx720\pardeftab720\li720\fi-720\sl360\sa320\partightenfactor0
\ls2\ilvl0
\b0\fs32 \cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 The structure of the schema file reflects the structure of the data file it's describing.\cb1 \uc0\u8232 \
\ls2\ilvl0\cb3 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 The outermost constructs in the schema file are the outermost in the data file and as we nest, it parallels the nesting.\cb1 \uc0\u8232 \
\ls2\ilvl0\cb3 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 In JSON Schema,\'a0
\f2\fs27\fsmilli13600 \cb5 additionalProperties: true | false
\f0\fs32 \cb3 \'a0determines whether said data are allowed to have any properties beyond those that are specified in the schema.\cb1 \uc0\u8232 \
\ls2\ilvl0\cb3 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Many parsers actually do enforce that labels or properties need to be unique within objects, even though technically syntatically correct JSON does allow multiple copies.\cb1 \uc0\u8232 \
\ls2\ilvl0\cb3 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Numeric boundaries for integer types:\cb1 \uc0\u8232 
\f2\fs27\fsmilli13600 \cb6  "Price": \{\
\pard\tx220\tx720\pardeftab720\li720\fi-720\sl380\partightenfactor0
\ls2\ilvl0\cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2      "type": integer,\
\ls2\ilvl0\kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2      "minimum": min,\
\ls2\ilvl0\kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2      "maximum": max\
\ls2\ilvl0\kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2  \}\
\ls2\ilvl0\kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \uc0\u8232 
\f0\fs32 \cb1 \
\pard\tx220\tx720\pardeftab720\li720\fi-720\sl360\sa320\partightenfactor0
\ls2\ilvl0\cf2 \cb3 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 We can constrain strings using a pattern (similar to regex), and we can constrain any type by enumerating the values that are allowed\cb1 \uc0\u8232 
\f2\fs27\fsmilli13600 \cb6  "Month": \{\
\pard\tx220\tx720\pardeftab720\li720\fi-720\sl380\partightenfactor0
\ls2\ilvl0\cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2      "type": string,\
\ls2\ilvl0\kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2      "enum": ["January", "February", "March", ... ]\
\ls2\ilvl0\kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2  \}\
\ls2\ilvl0\kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \uc0\u8232 
\f0\fs32 \cb1 \
\pard\pardeftab720\sl380\partightenfactor0

\f2\fs27\fsmilli13600 \cf2 \cb6 \{ \cf7 \strokec7 "type"\cf2 \strokec2 :\cf7 \strokec7 "object"\cf2 \strokec2 ,\
  \cf7 \strokec7 "properties"\cf2 \strokec2 : \{\
     \cf7 \strokec7 "Books"\cf2 \strokec2 : \{\
        \cf7 \strokec7 "type"\cf2 \strokec2 :\cf7 \strokec7 "array"\cf2 \strokec2 ,\
        \cf7 \strokec7 "items"\cf2 \strokec2 : \{\
           \cf7 \strokec7 "type"\cf2 \strokec2 :\cf7 \strokec7 "object"\cf2 \strokec2 ,\
           \cf7 \strokec7 "properties"\cf2 \strokec2 : \{\
              \cf7 \strokec7 "ISBN"\cf2 \strokec2 : \{ \cf7 \strokec7 "type"\cf2 \strokec2 :\cf7 \strokec7 "string"\cf2 \strokec2 , \cf7 \strokec7 "pattern"\cf2 \strokec2 :\cf7 \strokec7 "ISBN*"\cf2 \strokec2  \},\
              \cf7 \strokec7 "Price"\cf2 \strokec2 : \{ \cf7 \strokec7 "type"\cf2 \strokec2 :\cf7 \strokec7 "integer"\cf2 \strokec2 ,\
                         \cf7 \strokec7 "minimum"\cf2 \strokec2 :\cf8 \strokec8 0\cf2 \strokec2 , \cf7 \strokec7 "maximum"\cf2 \strokec2 :\cf8 \strokec8 200\cf2 \strokec2  \},\
              \cf7 \strokec7 "Edition"\cf2 \strokec2 : \{ \cf7 \strokec7 "type"\cf2 \strokec2 :\cf7 \strokec7 "integer"\cf2 \strokec2 , \cf7 \strokec7 "optional"\cf2 \strokec2 : \cf8 \strokec8 true\cf2 \strokec2  \},\
              \cf7 \strokec7 "Remark"\cf2 \strokec2 : \{ \cf7 \strokec7 "type"\cf2 \strokec2 :\cf7 \strokec7 "string"\cf2 \strokec2 , \cf7 \strokec7 "optional"\cf2 \strokec2 : \cf8 \strokec8 true\cf2 \strokec2  \},\
              \cf7 \strokec7 "Title"\cf2 \strokec2 : \{ \cf7 \strokec7 "type"\cf2 \strokec2 :\cf7 \strokec7 "string"\cf2 \strokec2  \},\
              \cf7 \strokec7 "Authors"\cf2 \strokec2 : \{ \
                 \cf7 \strokec7 "type"\cf2 \strokec2 :\cf7 \strokec7 "array"\cf2 \strokec2 ,\
                 \cf7 \strokec7 "minItems"\cf2 \strokec2 :\cf8 \strokec8 1\cf2 \strokec2 ,\
                 \cf7 \strokec7 "maxItems"\cf2 \strokec2 :\cf8 \strokec8 10\cf2 \strokec2 ,\
                 \cf7 \strokec7 "items"\cf2 \strokec2 : \{\
                    \cf7 \strokec7 "type"\cf2 \strokec2 :\cf7 \strokec7 "object"\cf2 \strokec2 ,\
                    \cf7 \strokec7 "properties"\cf2 \strokec2 : \{\
                       \cf7 \strokec7 "First_Name"\cf2 \strokec2 : \{ \cf7 \strokec7 "type"\cf2 \strokec2 :\cf7 \strokec7 "string"\cf2 \strokec2  \},\
                       \cf7 \strokec7 "Last_Name"\cf2 \strokec2 : \{ \cf7 \strokec7 "type"\cf2 \strokec2 :\cf7 \strokec7 "string"\cf2 \strokec2  \}\}\}\}\}\}\},\
     \cf7 \strokec7 "Magazines"\cf2 \strokec2 : \{\
        \cf7 \strokec7 "type"\cf2 \strokec2 :\cf7 \strokec7 "array"\cf2 \strokec2 ,\
        \cf7 \strokec7 "items"\cf2 \strokec2 : \{\
           \cf7 \strokec7 "type"\cf2 \strokec2 :\cf7 \strokec7 "object"\cf2 \strokec2 ,\
           \cf7 \strokec7 "properties"\cf2 \strokec2 : \{\
              \cf7 \strokec7 "Title"\cf2 \strokec2 : \{ \cf7 \strokec7 "type"\cf2 \strokec2 :\cf7 \strokec7 "string"\cf2 \strokec2  \},\
              \cf7 \strokec7 "Month"\cf2 \strokec2 : \{ \cf7 \strokec7 "type"\cf2 \strokec2 :\cf7 \strokec7 "string"\cf2 \strokec2 ,\
                         \cf7 \strokec7 "enum"\cf2 \strokec2 :[\cf7 \strokec7 "January"\cf2 \strokec2 ,\cf7 \strokec7 "February"\cf2 \strokec2 ] \},\
              \cf7 \strokec7 "Year"\cf2 \strokec2 : \{ \cf7 \strokec7 "type"\cf2 \strokec2 :\cf7 \strokec7 "integer"\cf2 \strokec2  \}\}\}\}\
\}\}\
}