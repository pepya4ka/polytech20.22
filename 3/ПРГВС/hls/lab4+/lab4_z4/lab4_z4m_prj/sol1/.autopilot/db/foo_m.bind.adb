<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>foo_m</name>
		<ret_bitwidth>0</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>3</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>data_in</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>data_in</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>1</if_type>
				<array_size>16384</array_size>
				<bit_vecs class_id="7" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_2">
				<Value>
					<Obj>
						<type>1</type>
						<id>2</id>
						<name>scale</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>scale</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>1</if_type>
				<array_size>3</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_3">
				<Value>
					<Obj>
						<type>1</type>
						<id>3</id>
						<name>data_out</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>data_out</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>1</if_type>
				<array_size>16384</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>12</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_4">
				<Value>
					<Obj>
						<type>0</type>
						<id>4</id>
						<name>tmp3_loc_c</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>25</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>1</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_5">
				<Value>
					<Obj>
						<type>0</type>
						<id>10</id>
						<name>temp1</name>
						<fileName>./source/lab4_z4.c</fileName>
						<fileDirectory>/home/sokrat/project/learn/Hybridsystem/homework/hw4+/lab4_z4</fileDirectory>
						<lineNumber>22</lineNumber>
						<contextFuncName>foo_m</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="11" tracking_level="0" version="0">
								<first>/home/sokrat/project/learn/Hybridsystem/homework/hw4+/lab4_z4</first>
								<second class_id="12" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="13" tracking_level="0" version="0">
										<first class_id="14" tracking_level="0" version="0">
											<first>./source/lab4_z4.c</first>
											<second>foo_m</second>
										</first>
										<second>22</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>temp1</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>26</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>2</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_6">
				<Value>
					<Obj>
						<type>0</type>
						<id>11</id>
						<name>temp2</name>
						<fileName>./source/lab4_z4.c</fileName>
						<fileDirectory>/home/sokrat/project/learn/Hybridsystem/homework/hw4+/lab4_z4</fileDirectory>
						<lineNumber>22</lineNumber>
						<contextFuncName>foo_m</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/sokrat/project/learn/Hybridsystem/homework/hw4+/lab4_z4</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>./source/lab4_z4.c</first>
											<second>foo_m</second>
										</first>
										<second>22</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>temp2</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>27</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>3</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_7">
				<Value>
					<Obj>
						<type>0</type>
						<id>12</id>
						<name>temp3</name>
						<fileName>./source/lab4_z4.c</fileName>
						<fileDirectory>/home/sokrat/project/learn/Hybridsystem/homework/hw4+/lab4_z4</fileDirectory>
						<lineNumber>22</lineNumber>
						<contextFuncName>foo_m</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/sokrat/project/learn/Hybridsystem/homework/hw4+/lab4_z4</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>./source/lab4_z4.c</first>
											<second>foo_m</second>
										</first>
										<second>22</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>temp3</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>28</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>4</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_8">
				<Value>
					<Obj>
						<type>0</type>
						<id>13</id>
						<name>temp4</name>
						<fileName>./source/lab4_z4.c</fileName>
						<fileDirectory>/home/sokrat/project/learn/Hybridsystem/homework/hw4+/lab4_z4</fileDirectory>
						<lineNumber>22</lineNumber>
						<contextFuncName>foo_m</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/sokrat/project/learn/Hybridsystem/homework/hw4+/lab4_z4</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>./source/lab4_z4.c</first>
											<second>foo_m</second>
										</first>
										<second>22</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>temp4</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>29</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>5</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_9">
				<Value>
					<Obj>
						<type>0</type>
						<id>16</id>
						<name>call_ret</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>3</count>
					<item_version>0</item_version>
					<item>31</item>
					<item>32</item>
					<item>33</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>6</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_10">
				<Value>
					<Obj>
						<type>0</type>
						<id>17</id>
						<name>tmp1_loc_channel</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>34</item>
				</oprand_edges>
				<opcode>extractvalue</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>7</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_11">
				<Value>
					<Obj>
						<type>0</type>
						<id>18</id>
						<name>tmp2_loc_channel</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>35</item>
				</oprand_edges>
				<opcode>extractvalue</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>8</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_12">
				<Value>
					<Obj>
						<type>0</type>
						<id>19</id>
						<name>_ln0</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>6</count>
					<item_version>0</item_version>
					<item>37</item>
					<item>38</item>
					<item>39</item>
					<item>40</item>
					<item>41</item>
					<item>42</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>9</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_13">
				<Value>
					<Obj>
						<type>0</type>
						<id>20</id>
						<name>_ln0</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>10</count>
					<item_version>0</item_version>
					<item>44</item>
					<item>45</item>
					<item>46</item>
					<item>47</item>
					<item>48</item>
					<item>49</item>
					<item>120</item>
					<item>121</item>
					<item>122</item>
					<item>123</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>10</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_14">
				<Value>
					<Obj>
						<type>0</type>
						<id>21</id>
						<name>_ln0</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>6</count>
					<item_version>0</item_version>
					<item>51</item>
					<item>52</item>
					<item>53</item>
					<item>54</item>
					<item>119</item>
					<item>124</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>11</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_15">
				<Value>
					<Obj>
						<type>0</type>
						<id>22</id>
						<name>_ln35</name>
						<fileName>./source/lab4_z4.c</fileName>
						<fileDirectory>/home/sokrat/project/learn/Hybridsystem/homework/hw4+/lab4_z4</fileDirectory>
						<lineNumber>35</lineNumber>
						<contextFuncName>foo_m</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/sokrat/project/learn/Hybridsystem/homework/hw4+/lab4_z4</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>./source/lab4_z4.c</first>
											<second>foo_m</second>
										</first>
										<second>35</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>0</count>
					<item_version>0</item_version>
				</oprand_edges>
				<opcode>ret</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>12</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>5</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_16">
				<Value>
					<Obj>
						<type>2</type>
						<id>24</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>1</content>
			</item>
			<item class_id_reference="16" object_id="_17">
				<Value>
					<Obj>
						<type>2</type>
						<id>30</id>
						<name>Block_codeRepl8_proc</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:Block_codeRepl8_proc&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_18">
				<Value>
					<Obj>
						<type>2</type>
						<id>36</id>
						<name>Loop_Loop1_proc</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:Loop_Loop1_proc&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_19">
				<Value>
					<Obj>
						<type>2</type>
						<id>43</id>
						<name>Loop_Loop2_proc</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:Loop_Loop2_proc&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_20">
				<Value>
					<Obj>
						<type>2</type>
						<id>50</id>
						<name>Loop_Loop3_proc</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:Loop_Loop3_proc&gt;</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_21">
				<Obj>
					<type>3</type>
					<id>23</id>
					<name>foo_m</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<coreName></coreName>
				</Obj>
				<node_objs>
					<count>12</count>
					<item_version>0</item_version>
					<item>4</item>
					<item>10</item>
					<item>11</item>
					<item>12</item>
					<item>13</item>
					<item>16</item>
					<item>17</item>
					<item>18</item>
					<item>19</item>
					<item>20</item>
					<item>21</item>
					<item>22</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>32</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_22">
				<id>25</id>
				<edge_type>1</edge_type>
				<source_obj>24</source_obj>
				<sink_obj>4</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_23">
				<id>26</id>
				<edge_type>1</edge_type>
				<source_obj>24</source_obj>
				<sink_obj>10</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_24">
				<id>27</id>
				<edge_type>1</edge_type>
				<source_obj>24</source_obj>
				<sink_obj>11</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_25">
				<id>28</id>
				<edge_type>1</edge_type>
				<source_obj>24</source_obj>
				<sink_obj>12</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_26">
				<id>29</id>
				<edge_type>1</edge_type>
				<source_obj>24</source_obj>
				<sink_obj>13</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_27">
				<id>31</id>
				<edge_type>1</edge_type>
				<source_obj>30</source_obj>
				<sink_obj>16</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_28">
				<id>32</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>16</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_29">
				<id>33</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>16</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_30">
				<id>34</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>17</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_31">
				<id>35</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>18</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_32">
				<id>37</id>
				<edge_type>1</edge_type>
				<source_obj>36</source_obj>
				<sink_obj>19</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_33">
				<id>38</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>19</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_34">
				<id>39</id>
				<edge_type>1</edge_type>
				<source_obj>17</source_obj>
				<sink_obj>19</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_35">
				<id>40</id>
				<edge_type>1</edge_type>
				<source_obj>10</source_obj>
				<sink_obj>19</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_36">
				<id>41</id>
				<edge_type>1</edge_type>
				<source_obj>18</source_obj>
				<sink_obj>19</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_37">
				<id>42</id>
				<edge_type>1</edge_type>
				<source_obj>11</source_obj>
				<sink_obj>19</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_38">
				<id>44</id>
				<edge_type>1</edge_type>
				<source_obj>43</source_obj>
				<sink_obj>20</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_39">
				<id>45</id>
				<edge_type>1</edge_type>
				<source_obj>10</source_obj>
				<sink_obj>20</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_40">
				<id>46</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>20</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_41">
				<id>47</id>
				<edge_type>1</edge_type>
				<source_obj>12</source_obj>
				<sink_obj>20</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_42">
				<id>48</id>
				<edge_type>1</edge_type>
				<source_obj>11</source_obj>
				<sink_obj>20</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_43">
				<id>49</id>
				<edge_type>1</edge_type>
				<source_obj>13</source_obj>
				<sink_obj>20</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_44">
				<id>51</id>
				<edge_type>1</edge_type>
				<source_obj>50</source_obj>
				<sink_obj>21</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_45">
				<id>52</id>
				<edge_type>1</edge_type>
				<source_obj>13</source_obj>
				<sink_obj>21</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_46">
				<id>53</id>
				<edge_type>1</edge_type>
				<source_obj>12</source_obj>
				<sink_obj>21</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_47">
				<id>54</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>21</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_48">
				<id>119</id>
				<edge_type>4</edge_type>
				<source_obj>20</source_obj>
				<sink_obj>21</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_49">
				<id>120</id>
				<edge_type>4</edge_type>
				<source_obj>19</source_obj>
				<sink_obj>20</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_50">
				<id>121</id>
				<edge_type>4</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>20</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_51">
				<id>122</id>
				<edge_type>4</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>20</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_52">
				<id>123</id>
				<edge_type>4</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>20</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_53">
				<id>124</id>
				<edge_type>4</edge_type>
				<source_obj>20</source_obj>
				<sink_obj>21</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_54">
			<mId>1</mId>
			<mTag>foo_m</mTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>23</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>49167</mMinLatency>
			<mMaxLatency>49167</mMaxLatency>
			<mIsDfPipe>1</mIsDfPipe>
			<mDfPipe class_id="23" tracking_level="1" version="0" object_id="_55">
				<port_list class_id="24" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</port_list>
				<process_list class_id="25" tracking_level="0" version="0">
					<count>4</count>
					<item_version>0</item_version>
					<item class_id="26" tracking_level="1" version="0" object_id="_56">
						<type>0</type>
						<name>Block_codeRepl8_proc_U0</name>
						<ssdmobj_id>16</ssdmobj_id>
						<pins class_id="27" tracking_level="0" version="0">
							<count>4</count>
							<item_version>0</item_version>
							<item class_id="28" tracking_level="1" version="0" object_id="_57">
								<port class_id="29" tracking_level="1" version="0" object_id="_58">
									<name>scale</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id="30" tracking_level="1" version="0" object_id="_59">
									<type>0</type>
									<name>Block_codeRepl8_proc_U0</name>
									<ssdmobj_id>16</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_60">
								<port class_id_reference="29" object_id="_61">
									<name>tmp3_out_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_59"></inst>
							</item>
							<item class_id_reference="28" object_id="_62">
								<port class_id_reference="29" object_id="_63">
									<name>ap_return</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_59"></inst>
							</item>
							<item class_id_reference="28" object_id="_64">
								<port class_id_reference="29" object_id="_65">
									<name>ap_return</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_59"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_66">
						<type>0</type>
						<name>Loop_Loop1_proc_U0</name>
						<ssdmobj_id>19</ssdmobj_id>
						<pins>
							<count>5</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_67">
								<port class_id_reference="29" object_id="_68">
									<name>data_in</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_69">
									<type>0</type>
									<name>Loop_Loop1_proc_U0</name>
									<ssdmobj_id>19</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_70">
								<port class_id_reference="29" object_id="_71">
									<name>p_read</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_69"></inst>
							</item>
							<item class_id_reference="28" object_id="_72">
								<port class_id_reference="29" object_id="_73">
									<name>temp1</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_69"></inst>
							</item>
							<item class_id_reference="28" object_id="_74">
								<port class_id_reference="29" object_id="_75">
									<name>p_read1</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_69"></inst>
							</item>
							<item class_id_reference="28" object_id="_76">
								<port class_id_reference="29" object_id="_77">
									<name>temp2</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_69"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_78">
						<type>0</type>
						<name>Loop_Loop2_proc_U0</name>
						<ssdmobj_id>20</ssdmobj_id>
						<pins>
							<count>5</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_79">
								<port class_id_reference="29" object_id="_80">
									<name>temp1</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_81">
									<type>0</type>
									<name>Loop_Loop2_proc_U0</name>
									<ssdmobj_id>20</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_82">
								<port class_id_reference="29" object_id="_83">
									<name>tmp3_loc</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_81"></inst>
							</item>
							<item class_id_reference="28" object_id="_84">
								<port class_id_reference="29" object_id="_85">
									<name>temp3</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_81"></inst>
							</item>
							<item class_id_reference="28" object_id="_86">
								<port class_id_reference="29" object_id="_87">
									<name>temp2</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_81"></inst>
							</item>
							<item class_id_reference="28" object_id="_88">
								<port class_id_reference="29" object_id="_89">
									<name>temp4</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_81"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_90">
						<type>0</type>
						<name>Loop_Loop3_proc_U0</name>
						<ssdmobj_id>21</ssdmobj_id>
						<pins>
							<count>3</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_91">
								<port class_id_reference="29" object_id="_92">
									<name>temp4</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_93">
									<type>0</type>
									<name>Loop_Loop3_proc_U0</name>
									<ssdmobj_id>21</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_94">
								<port class_id_reference="29" object_id="_95">
									<name>temp3</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_93"></inst>
							</item>
							<item class_id_reference="28" object_id="_96">
								<port class_id_reference="29" object_id="_97">
									<name>data_out</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_93"></inst>
							</item>
						</pins>
					</item>
				</process_list>
				<channel_list class_id="31" tracking_level="0" version="0">
					<count>7</count>
					<item_version>0</item_version>
					<item class_id="32" tracking_level="1" version="0" object_id="_98">
						<type>1</type>
						<name>tmp3_loc_c</name>
						<ssdmobj_id>4</ssdmobj_id>
						<ctype>0</ctype>
						<depth>3</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_99">
							<port class_id_reference="29" object_id="_100">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_59"></inst>
						</source>
						<sink class_id_reference="28" object_id="_101">
							<port class_id_reference="29" object_id="_102">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_81"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_103">
						<type>1</type>
						<name>tmp1_loc_channel</name>
						<ssdmobj_id>17</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_104">
							<port class_id_reference="29" object_id="_105">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_59"></inst>
						</source>
						<sink class_id_reference="28" object_id="_106">
							<port class_id_reference="29" object_id="_107">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_69"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_108">
						<type>1</type>
						<name>tmp2_loc_channel</name>
						<ssdmobj_id>18</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_109">
							<port class_id_reference="29" object_id="_110">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_59"></inst>
						</source>
						<sink class_id_reference="28" object_id="_111">
							<port class_id_reference="29" object_id="_112">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_69"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_113">
						<type>1</type>
						<name>temp1</name>
						<ssdmobj_id>10</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_114">
							<port class_id_reference="29" object_id="_115">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_69"></inst>
						</source>
						<sink class_id_reference="28" object_id="_116">
							<port class_id_reference="29" object_id="_117">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_81"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_118">
						<type>1</type>
						<name>temp2</name>
						<ssdmobj_id>11</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_119">
							<port class_id_reference="29" object_id="_120">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_69"></inst>
						</source>
						<sink class_id_reference="28" object_id="_121">
							<port class_id_reference="29" object_id="_122">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_81"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_123">
						<type>1</type>
						<name>temp3</name>
						<ssdmobj_id>12</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_124">
							<port class_id_reference="29" object_id="_125">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_81"></inst>
						</source>
						<sink class_id_reference="28" object_id="_126">
							<port class_id_reference="29" object_id="_127">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_93"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_128">
						<type>1</type>
						<name>temp4</name>
						<ssdmobj_id>13</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_129">
							<port class_id_reference="29" object_id="_130">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_81"></inst>
						</source>
						<sink class_id_reference="28" object_id="_131">
							<port class_id_reference="29" object_id="_132">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_93"></inst>
						</sink>
					</item>
				</channel_list>
				<net_list class_id="33" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</net_list>
			</mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="34" tracking_level="1" version="0" object_id="_133">
		<states class_id="35" tracking_level="0" version="0">
			<count>7</count>
			<item_version>0</item_version>
			<item class_id="36" tracking_level="1" version="0" object_id="_134">
				<id>1</id>
				<operations class_id="37" tracking_level="0" version="0">
					<count>6</count>
					<item_version>0</item_version>
					<item class_id="38" tracking_level="1" version="0" object_id="_135">
						<id>4</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_136">
						<id>10</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_137">
						<id>11</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_138">
						<id>12</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_139">
						<id>13</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_140">
						<id>16</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_141">
				<id>2</id>
				<operations>
					<count>4</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_142">
						<id>16</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
					<item class_id_reference="38" object_id="_143">
						<id>17</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_144">
						<id>18</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_145">
						<id>19</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_146">
				<id>3</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_147">
						<id>19</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_148">
				<id>4</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_149">
						<id>20</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_150">
				<id>5</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_151">
						<id>20</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_152">
				<id>6</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_153">
						<id>21</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_154">
				<id>7</id>
				<operations>
					<count>9</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_155">
						<id>5</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_156">
						<id>6</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_157">
						<id>7</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_158">
						<id>8</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_159">
						<id>9</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_160">
						<id>14</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_161">
						<id>15</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_162">
						<id>21</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
					<item class_id_reference="38" object_id="_163">
						<id>22</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
				</operations>
			</item>
		</states>
		<transitions class_id="39" tracking_level="0" version="0">
			<count>6</count>
			<item_version>0</item_version>
			<item class_id="40" tracking_level="1" version="0" object_id="_164">
				<inState>1</inState>
				<outState>2</outState>
				<condition class_id="41" tracking_level="0" version="0">
					<id>-1</id>
					<sop class_id="42" tracking_level="0" version="0">
						<count>1</count>
						<item_version>0</item_version>
						<item class_id="43" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_165">
				<inState>2</inState>
				<outState>3</outState>
				<condition>
					<id>-1</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_166">
				<inState>3</inState>
				<outState>4</outState>
				<condition>
					<id>-1</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_167">
				<inState>4</inState>
				<outState>5</outState>
				<condition>
					<id>-1</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_168">
				<inState>5</inState>
				<outState>6</outState>
				<condition>
					<id>-1</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_169">
				<inState>6</inState>
				<outState>7</outState>
				<condition>
					<id>-1</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
		</transitions>
	</fsm>
	<res class_id="-1"></res>
	<node_label_latency class_id="45" tracking_level="0" version="0">
		<count>12</count>
		<item_version>0</item_version>
		<item class_id="46" tracking_level="0" version="0">
			<first>4</first>
			<second class_id="47" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>10</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>11</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>12</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>13</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>16</first>
			<second>
				<first>0</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>17</first>
			<second>
				<first>1</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>18</first>
			<second>
				<first>1</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>19</first>
			<second>
				<first>1</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>20</first>
			<second>
				<first>3</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>21</first>
			<second>
				<first>5</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>22</first>
			<second>
				<first>6</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="48" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="49" tracking_level="0" version="0">
			<first>23</first>
			<second class_id="50" tracking_level="0" version="0">
				<first>0</first>
				<second>6</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="51" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="52" tracking_level="1" version="0" object_id="_170">
			<region_name>foo_m</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>23</item>
			</basic_blocks>
			<nodes>
				<count>19</count>
				<item_version>0</item_version>
				<item>4</item>
				<item>5</item>
				<item>6</item>
				<item>7</item>
				<item>8</item>
				<item>9</item>
				<item>10</item>
				<item>11</item>
				<item>12</item>
				<item>13</item>
				<item>14</item>
				<item>15</item>
				<item>16</item>
				<item>17</item>
				<item>18</item>
				<item>19</item>
				<item>20</item>
				<item>21</item>
				<item>22</item>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>16</region_type>
			<interval>0</interval>
			<pipe_depth>0</pipe_depth>
		</item>
	</regions>
	<dp_fu_nodes class_id="53" tracking_level="0" version="0">
		<count>11</count>
		<item_version>0</item_version>
		<item class_id="54" tracking_level="0" version="0">
			<first>60</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>4</item>
			</second>
		</item>
		<item>
			<first>64</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>10</item>
			</second>
		</item>
		<item>
			<first>68</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>11</item>
			</second>
		</item>
		<item>
			<first>72</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>12</item>
			</second>
		</item>
		<item>
			<first>76</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>13</item>
			</second>
		</item>
		<item>
			<first>80</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>19</item>
				<item>19</item>
			</second>
		</item>
		<item>
			<first>90</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>20</item>
				<item>20</item>
			</second>
		</item>
		<item>
			<first>99</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>21</item>
				<item>21</item>
			</second>
		</item>
		<item>
			<first>107</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>16</item>
				<item>16</item>
			</second>
		</item>
		<item>
			<first>114</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>17</item>
			</second>
		</item>
		<item>
			<first>119</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>18</item>
			</second>
		</item>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="56" tracking_level="0" version="0">
		<count>7</count>
		<item_version>0</item_version>
		<item class_id="57" tracking_level="0" version="0">
			<first>temp1_alloca_fu_64</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>10</item>
			</second>
		</item>
		<item>
			<first>temp2_alloca_fu_68</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>11</item>
			</second>
		</item>
		<item>
			<first>temp3_alloca_fu_72</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>12</item>
			</second>
		</item>
		<item>
			<first>temp4_alloca_fu_76</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>13</item>
			</second>
		</item>
		<item>
			<first>tmp1_loc_channel_fu_114</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>17</item>
			</second>
		</item>
		<item>
			<first>tmp2_loc_channel_fu_119</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>18</item>
			</second>
		</item>
		<item>
			<first>tmp3_loc_c_fu_60</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>4</item>
			</second>
		</item>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>4</count>
		<item_version>0</item_version>
		<item>
			<first>grp_Block_codeRepl8_proc_fu_107</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>16</item>
				<item>16</item>
			</second>
		</item>
		<item>
			<first>grp_Loop_Loop1_proc_fu_80</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>19</item>
				<item>19</item>
			</second>
		</item>
		<item>
			<first>grp_Loop_Loop2_proc_fu_90</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>20</item>
				<item>20</item>
			</second>
		</item>
		<item>
			<first>grp_Loop_Loop3_proc_fu_99</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>21</item>
				<item>21</item>
			</second>
		</item>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="58" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>3</count>
		<item_version>0</item_version>
		<item>
			<first>124</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>4</item>
			</second>
		</item>
		<item>
			<first>130</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>17</item>
			</second>
		</item>
		<item>
			<first>135</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>18</item>
			</second>
		</item>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>3</count>
		<item_version>0</item_version>
		<item>
			<first>tmp1_loc_channel_reg_130</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>17</item>
			</second>
		</item>
		<item>
			<first>tmp2_loc_channel_reg_135</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>18</item>
			</second>
		</item>
		<item>
			<first>tmp3_loc_c_reg_124</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>4</item>
			</second>
		</item>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="59" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_port_io_nodes>
	<port2core class_id="60" tracking_level="0" version="0">
		<count>3</count>
		<item_version>0</item_version>
		<item class_id="61" tracking_level="0" version="0">
			<first>1</first>
			<second>RAM</second>
		</item>
		<item>
			<first>2</first>
			<second>RAM</second>
		</item>
		<item>
			<first>3</first>
			<second>RAM</second>
		</item>
	</port2core>
	<node2core>
		<count>7</count>
		<item_version>0</item_version>
		<item>
			<first>4</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>10</first>
			<second>RAM</second>
		</item>
		<item>
			<first>11</first>
			<second>RAM</second>
		</item>
		<item>
			<first>12</first>
			<second>RAM</second>
		</item>
		<item>
			<first>13</first>
			<second>RAM</second>
		</item>
		<item>
			<first>17</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>18</first>
			<second>FIFO</second>
		</item>
	</node2core>
</syndb>
</boost_serialization>

