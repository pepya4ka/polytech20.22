<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>Block_codeRepl8_proc</name>
		<ret_bitwidth>64</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>2</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>scale</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>1</if_type>
				<array_size>3</array_size>
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
						<name>tmp3_out_out</name>
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
				<direction>1</direction>
				<if_type>3</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>10</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_3">
				<Value>
					<Obj>
						<type>0</type>
						<id>4</id>
						<name>scale_addr</name>
						<fileName>./source/lab4_z4.c</fileName>
						<fileDirectory>/home/sokrat/project/learn/Hybridsystem/homework/hw4+/lab4_z4</fileDirectory>
						<lineNumber>20</lineNumber>
						<contextFuncName>foo_m</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="10" tracking_level="0" version="0">
								<first>/home/sokrat/project/learn/Hybridsystem/homework/hw4+/lab4_z4</first>
								<second class_id="11" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="12" tracking_level="0" version="0">
										<first class_id="13" tracking_level="0" version="0">
											<first>./source/lab4_z4.c</first>
											<second>foo_m</second>
										</first>
										<second>20</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>2</bitwidth>
				</Value>
				<oprand_edges>
					<count>3</count>
					<item_version>0</item_version>
					<item>15</item>
					<item>17</item>
					<item>18</item>
				</oprand_edges>
				<opcode>getelementptr</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>1</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_4">
				<Value>
					<Obj>
						<type>0</type>
						<id>5</id>
						<name>tmp1</name>
						<fileName>./source/lab4_z4.c</fileName>
						<fileDirectory>/home/sokrat/project/learn/Hybridsystem/homework/hw4+/lab4_z4</fileDirectory>
						<lineNumber>23</lineNumber>
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
										<second>23</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>tmp1</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>19</item>
				</oprand_edges>
				<opcode>load</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>2.15</m_delay>
				<m_topoIndex>2</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_5">
				<Value>
					<Obj>
						<type>0</type>
						<id>6</id>
						<name>scale_addr_1</name>
						<fileName>./source/lab4_z4.c</fileName>
						<fileDirectory>/home/sokrat/project/learn/Hybridsystem/homework/hw4+/lab4_z4</fileDirectory>
						<lineNumber>23</lineNumber>
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
										<second>23</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>2</bitwidth>
				</Value>
				<oprand_edges>
					<count>3</count>
					<item_version>0</item_version>
					<item>20</item>
					<item>21</item>
					<item>23</item>
				</oprand_edges>
				<opcode>getelementptr</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>3</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_6">
				<Value>
					<Obj>
						<type>0</type>
						<id>7</id>
						<name>tmp2</name>
						<fileName>./source/lab4_z4.c</fileName>
						<fileDirectory>/home/sokrat/project/learn/Hybridsystem/homework/hw4+/lab4_z4</fileDirectory>
						<lineNumber>23</lineNumber>
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
										<second>23</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>tmp2</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>24</item>
				</oprand_edges>
				<opcode>load</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>2.15</m_delay>
				<m_topoIndex>4</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_7">
				<Value>
					<Obj>
						<type>0</type>
						<id>8</id>
						<name>scale_addr_2</name>
						<fileName>./source/lab4_z4.c</fileName>
						<fileDirectory>/home/sokrat/project/learn/Hybridsystem/homework/hw4+/lab4_z4</fileDirectory>
						<lineNumber>23</lineNumber>
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
										<second>23</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>2</bitwidth>
				</Value>
				<oprand_edges>
					<count>3</count>
					<item_version>0</item_version>
					<item>25</item>
					<item>26</item>
					<item>28</item>
				</oprand_edges>
				<opcode>getelementptr</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>5</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_8">
				<Value>
					<Obj>
						<type>0</type>
						<id>9</id>
						<name>tmp3</name>
						<fileName>./source/lab4_z4.c</fileName>
						<fileDirectory>/home/sokrat/project/learn/Hybridsystem/homework/hw4+/lab4_z4</fileDirectory>
						<lineNumber>23</lineNumber>
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
										<second>23</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>tmp3</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>29</item>
				</oprand_edges>
				<opcode>load</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>2.15</m_delay>
				<m_topoIndex>6</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_9">
				<Value>
					<Obj>
						<type>0</type>
						<id>10</id>
						<name>tmp3_out_out_write_ln23</name>
						<fileName>./source/lab4_z4.c</fileName>
						<fileDirectory>/home/sokrat/project/learn/Hybridsystem/homework/hw4+/lab4_z4</fileDirectory>
						<lineNumber>23</lineNumber>
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
										<second>23</second>
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
					<count>3</count>
					<item_version>0</item_version>
					<item>31</item>
					<item>32</item>
					<item>33</item>
				</oprand_edges>
				<opcode>write</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>3.90</m_delay>
				<m_topoIndex>7</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_10">
				<Value>
					<Obj>
						<type>0</type>
						<id>11</id>
						<name>mrv</name>
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
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>35</item>
					<item>36</item>
				</oprand_edges>
				<opcode>insertvalue</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>8</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_11">
				<Value>
					<Obj>
						<type>0</type>
						<id>12</id>
						<name>mrv_1</name>
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
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>37</item>
					<item>38</item>
				</oprand_edges>
				<opcode>insertvalue</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>9</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_12">
				<Value>
					<Obj>
						<type>0</type>
						<id>13</id>
						<name>_ln22</name>
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
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>39</item>
				</oprand_edges>
				<opcode>ret</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>10</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>4</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_13">
				<Value>
					<Obj>
						<type>2</type>
						<id>16</id>
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
				<content>0</content>
			</item>
			<item class_id_reference="16" object_id="_14">
				<Value>
					<Obj>
						<type>2</type>
						<id>22</id>
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
			<item class_id_reference="16" object_id="_15">
				<Value>
					<Obj>
						<type>2</type>
						<id>27</id>
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
				<content>2</content>
			</item>
			<item class_id_reference="16" object_id="_16">
				<Value>
					<Obj>
						<type>2</type>
						<id>34</id>
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
				<const_type>5</const_type>
				<content>&lt;undef&gt;</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_17">
				<Obj>
					<type>3</type>
					<id>14</id>
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
				<node_objs>
					<count>10</count>
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
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>19</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_18">
				<id>15</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>4</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_19">
				<id>17</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>4</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_20">
				<id>18</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>4</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_21">
				<id>19</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>5</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_22">
				<id>20</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>6</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_23">
				<id>21</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>6</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_24">
				<id>23</id>
				<edge_type>1</edge_type>
				<source_obj>22</source_obj>
				<sink_obj>6</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_25">
				<id>24</id>
				<edge_type>1</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>7</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_26">
				<id>25</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>8</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_27">
				<id>26</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>8</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_28">
				<id>28</id>
				<edge_type>1</edge_type>
				<source_obj>27</source_obj>
				<sink_obj>8</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_29">
				<id>29</id>
				<edge_type>1</edge_type>
				<source_obj>8</source_obj>
				<sink_obj>9</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_30">
				<id>32</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>10</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_31">
				<id>33</id>
				<edge_type>1</edge_type>
				<source_obj>9</source_obj>
				<sink_obj>10</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_32">
				<id>35</id>
				<edge_type>1</edge_type>
				<source_obj>34</source_obj>
				<sink_obj>11</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_33">
				<id>36</id>
				<edge_type>1</edge_type>
				<source_obj>5</source_obj>
				<sink_obj>11</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_34">
				<id>37</id>
				<edge_type>1</edge_type>
				<source_obj>11</source_obj>
				<sink_obj>12</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_35">
				<id>38</id>
				<edge_type>1</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>12</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_36">
				<id>39</id>
				<edge_type>1</edge_type>
				<source_obj>12</source_obj>
				<sink_obj>13</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_37">
			<mId>1</mId>
			<mTag>Block_codeRepl8_proc</mTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>14</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>2</mMinLatency>
			<mMaxLatency>2</mMaxLatency>
			<mIsDfPipe>0</mIsDfPipe>
			<mDfPipe class_id="-1"></mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="24" tracking_level="1" version="0" object_id="_38">
		<states class_id="25" tracking_level="0" version="0">
			<count>3</count>
			<item_version>0</item_version>
			<item class_id="26" tracking_level="1" version="0" object_id="_39">
				<id>1</id>
				<operations class_id="27" tracking_level="0" version="0">
					<count>2</count>
					<item_version>0</item_version>
					<item class_id="28" tracking_level="1" version="0" object_id="_40">
						<id>4</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="28" object_id="_41">
						<id>5</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="26" object_id="_42">
				<id>2</id>
				<operations>
					<count>5</count>
					<item_version>0</item_version>
					<item class_id_reference="28" object_id="_43">
						<id>5</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
					<item class_id_reference="28" object_id="_44">
						<id>6</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="28" object_id="_45">
						<id>7</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
					<item class_id_reference="28" object_id="_46">
						<id>8</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="28" object_id="_47">
						<id>9</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="26" object_id="_48">
				<id>3</id>
				<operations>
					<count>7</count>
					<item_version>0</item_version>
					<item class_id_reference="28" object_id="_49">
						<id>3</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="28" object_id="_50">
						<id>7</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
					<item class_id_reference="28" object_id="_51">
						<id>9</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
					<item class_id_reference="28" object_id="_52">
						<id>10</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="28" object_id="_53">
						<id>11</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="28" object_id="_54">
						<id>12</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="28" object_id="_55">
						<id>13</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
				</operations>
			</item>
		</states>
		<transitions class_id="29" tracking_level="0" version="0">
			<count>2</count>
			<item_version>0</item_version>
			<item class_id="30" tracking_level="1" version="0" object_id="_56">
				<inState>1</inState>
				<outState>2</outState>
				<condition class_id="31" tracking_level="0" version="0">
					<id>-1</id>
					<sop class_id="32" tracking_level="0" version="0">
						<count>1</count>
						<item_version>0</item_version>
						<item class_id="33" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="30" object_id="_57">
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
		</transitions>
	</fsm>
	<res class_id="-1"></res>
	<node_label_latency class_id="35" tracking_level="0" version="0">
		<count>10</count>
		<item_version>0</item_version>
		<item class_id="36" tracking_level="0" version="0">
			<first>4</first>
			<second class_id="37" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>5</first>
			<second>
				<first>0</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>6</first>
			<second>
				<first>1</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>7</first>
			<second>
				<first>1</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>8</first>
			<second>
				<first>1</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>9</first>
			<second>
				<first>1</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>10</first>
			<second>
				<first>2</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>11</first>
			<second>
				<first>2</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>12</first>
			<second>
				<first>2</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>13</first>
			<second>
				<first>2</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="38" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="39" tracking_level="0" version="0">
			<first>14</first>
			<second class_id="40" tracking_level="0" version="0">
				<first>0</first>
				<second>2</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="41" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</regions>
	<dp_fu_nodes class_id="42" tracking_level="0" version="0">
		<count>7</count>
		<item_version>0</item_version>
		<item class_id="43" tracking_level="0" version="0">
			<first>36</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>10</item>
			</second>
		</item>
		<item>
			<first>43</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>4</item>
			</second>
		</item>
		<item>
			<first>51</first>
			<second>
				<count>6</count>
				<item_version>0</item_version>
				<item>5</item>
				<item>5</item>
				<item>7</item>
				<item>7</item>
				<item>9</item>
				<item>9</item>
			</second>
		</item>
		<item>
			<first>57</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>6</item>
			</second>
		</item>
		<item>
			<first>66</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>8</item>
			</second>
		</item>
		<item>
			<first>80</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>11</item>
			</second>
		</item>
		<item>
			<first>85</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>12</item>
			</second>
		</item>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="45" tracking_level="0" version="0">
		<count>5</count>
		<item_version>0</item_version>
		<item class_id="46" tracking_level="0" version="0">
			<first>mrv_1_fu_85</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>12</item>
			</second>
		</item>
		<item>
			<first>mrv_fu_80</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>11</item>
			</second>
		</item>
		<item>
			<first>scale_addr_1_gep_fu_57</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>6</item>
			</second>
		</item>
		<item>
			<first>scale_addr_2_gep_fu_66</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>8</item>
			</second>
		</item>
		<item>
			<first>scale_addr_gep_fu_43</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>4</item>
			</second>
		</item>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>1</count>
		<item_version>0</item_version>
		<item>
			<first>write_ln23_write_fu_36</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>10</item>
			</second>
		</item>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="47" tracking_level="0" version="0">
		<count>2</count>
		<item_version>0</item_version>
		<item class_id="48" tracking_level="0" version="0">
			<first class_id="49" tracking_level="0" version="0">
				<first>scale</first>
				<second>0</second>
			</first>
			<second>
				<count>4</count>
				<item_version>0</item_version>
				<item>5</item>
				<item>5</item>
				<item>7</item>
				<item>7</item>
			</second>
		</item>
		<item>
			<first>
				<first>scale</first>
				<second>1</second>
			</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>9</item>
				<item>9</item>
			</second>
		</item>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>4</count>
		<item_version>0</item_version>
		<item>
			<first>91</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>4</item>
			</second>
		</item>
		<item>
			<first>96</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>5</item>
			</second>
		</item>
		<item>
			<first>101</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>6</item>
			</second>
		</item>
		<item>
			<first>106</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>8</item>
			</second>
		</item>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>4</count>
		<item_version>0</item_version>
		<item>
			<first>scale_addr_1_reg_101</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>6</item>
			</second>
		</item>
		<item>
			<first>scale_addr_2_reg_106</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>8</item>
			</second>
		</item>
		<item>
			<first>scale_addr_reg_91</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>4</item>
			</second>
		</item>
		<item>
			<first>tmp1_reg_96</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>5</item>
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
	<dp_port_io_nodes class_id="50" tracking_level="0" version="0">
		<count>3</count>
		<item_version>0</item_version>
		<item class_id="51" tracking_level="0" version="0">
			<first>scale(p0)</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>load</first>
					<second>
						<count>4</count>
						<item_version>0</item_version>
						<item>5</item>
						<item>5</item>
						<item>7</item>
						<item>7</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>scale(p1)</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>load</first>
					<second>
						<count>2</count>
						<item_version>0</item_version>
						<item>9</item>
						<item>9</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>tmp3_out_out</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>write</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>10</item>
					</second>
				</item>
			</second>
		</item>
	</dp_port_io_nodes>
	<port2core class_id="52" tracking_level="0" version="0">
		<count>2</count>
		<item_version>0</item_version>
		<item class_id="53" tracking_level="0" version="0">
			<first>1</first>
			<second>RAM</second>
		</item>
		<item>
			<first>2</first>
			<second>FIFO</second>
		</item>
	</port2core>
	<node2core>
		<count>0</count>
		<item_version>0</item_version>
	</node2core>
</syndb>
</boost_serialization>

